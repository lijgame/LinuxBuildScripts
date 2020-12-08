#!/bin/sh
colmap feature_extractor --image_path ./img --database_path ./db.db
colmap vocab_tree_matcher --database_path ./db.db --VocabTreeMatching.vocab_tree_path ~/vocab_tree_flickr100K_words32K.bin
mkdir -p ./sparse
colmap mapper --database_path ./db.db --image_path ./img --output_path ./sparse
mkdir -p ./dense
colmap image_undistorter --image_path ./img --input_path ./sparse/0 --output_path ./dense --output_type COLMAP --max_image_size 2000
colmap patch_match_stereo  --workspace_path ./dense --workspace_format COLMAP --PatchMatchStereo.geom_consistency true --PatchMatchStereo.max_image_size 2000
colmap dense_fuser --workspace_path ./dense --workspace_format COLMAP --input_type geometric --output_path ./dense/fused.ply
colmap dense_mesher --input_path ./dense/fused.ply --output_path ./dense/meshed.ply --DenseMeshing.depth 13 --DenseMeshing.trim 11 --DenseMeshing.color 32 

