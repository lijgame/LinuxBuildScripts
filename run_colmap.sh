#!/bin/sh
feature_extractor --image_path ./img --database_path ./db.db
vocab_tree_matcher --database_path ./db.db --VocabTreeMatching.vocab_tree_path ~/vocab_tree-65536.bin
mkdir ./sparse
mapper --database_path ./db.db --image_path ./img --export_path ./sparse
mkdir ./dense
image_undistorter --image_path ./img --input_path ./sparse/0 --output_path ./dense --output_type COLMAP --max_image_size 4000
dense_stereo --workspace_path ./dense workspace_format ./COLMAP --DenseStereo.geom_consistency true --DenseStereo.max_image_size 4000
dense_fuser --workspace_path ./dense workspace_format ./COLMAP --input_type geometric --output_path ./dense/fused.ply
dense_mesher --input_path ./dense/fused.ply --output_path ./dense/meshed.ply --DenseMeshing.depth 13 --DenseMeshing.trim 11 --DenseMeshing.color 32 
