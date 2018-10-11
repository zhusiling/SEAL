clc; clear; close all;
addpath('./function')
addpath('./export_fig')

%% Collect and plot SBD results
categories = categories_sbd();

% Original ground truth (Thin)
result_dir = {'../../../exper/sbd/result/evaluation/test/gt_orig_thin/score_casenet';...
              '../../../exper/sbd/result/evaluation/test/gt_orig_thin/score_casenet-s';...
              '../../../exper/sbd/result/evaluation/test/gt_orig_thin/score_casenet-c';...
              '../../../exper/sbd/result/evaluation/test/gt_orig_thin/score_seal'};
plot_pr(result_dir, {'CASENet'; 'CASENet-S'; 'CASENet-C'; 'SEAL'}, '../../../exper/sbd/result/evaluation/test/gt_orig_thin/pr_curve', categories, false);

% Original ground truth (Raw)
result_dir = {'../../../exper/sbd/result/evaluation/test/gt_orig_raw/score_casenet';...
              '../../../exper/sbd/result/evaluation/test/gt_orig_raw/score_casenet-s';...
              '../../../exper/sbd/result/evaluation/test/gt_orig_raw/score_casenet-c';...
              '../../../exper/sbd/result/evaluation/test/gt_orig_raw/score_seal'};
plot_pr(result_dir, {'CASENet'; 'CASENet-S'; 'CASENet-C'; 'SEAL'}, '../../../exper/sbd/result/evaluation/test/gt_orig_raw/pr_curve', categories, false);

% Refined ground truth (Thin)
result_dir = {'../../../exper/sbd/result/evaluation/test/gt_refine_thin/score_casenet';...
              '../../../exper/sbd/result/evaluation/test/gt_refine_thin/score_casenet-s';...
              '../../../exper/sbd/result/evaluation/test/gt_refine_thin/score_casenet-c';...
              '../../../exper/sbd/result/evaluation/test/gt_refine_thin/score_seal'};
plot_pr(result_dir, {'CASENet'; 'CASENet-S'; 'CASENet-C'; 'SEAL'}, '../../../exper/sbd/result/evaluation/test/gt_refine_thin/pr_curve', categories, false);

% Refined ground truth (Raw)
result_dir = {'../../../exper/sbd/result/evaluation/test/gt_refine_raw/score_casenet';...
              '../../../exper/sbd/result/evaluation/test/gt_refine_raw/score_casenet-s';...
              '../../../exper/sbd/result/evaluation/test/gt_refine_raw/score_casenet-c';...
              '../../../exper/sbd/result/evaluation/test/gt_refine_raw/score_seal'};
plot_pr(result_dir, {'CASENet'; 'CASENet-S'; 'CASENet-C'; 'SEAL'}, '../../../exper/sbd/result/evaluation/test/gt_refine_raw/pr_curve', categories, false);

%% Collect and plot Cityscapes results
categories = categories_city();

% Original ground truth (Thin)
result_dir = {'../../../exper/cityscapes/result/evaluation/test/gt_thin/score_casenet';...
              '../../../exper/cityscapes/result/evaluation/test/gt_thin/score_casenet-s';...
              '../../../exper/cityscapes/result/evaluation/test/gt_thin/score_seal'};
plot_pr(result_dir, {'CASENet'; 'CASENet-S'; 'SEAL'}, '../../../exper/cityscapes/result/evaluation/test/gt_thin/pr_curve', categories, false);

% Original ground truth (Raw)
result_dir = {'../../../exper/cityscapes/result/evaluation/test/gt_raw/score_casenet';...
              '../../../exper/cityscapes/result/evaluation/test/gt_raw/score_casenet-s';...
              '../../../exper/cityscapes/result/evaluation/test/gt_raw/score_seal'};
plot_pr(result_dir, {'CASENet'; 'CASENet-S'; 'SEAL'}, '../../../exper/cityscapes/result/evaluation/test/gt_raw/pr_curve', categories, false);