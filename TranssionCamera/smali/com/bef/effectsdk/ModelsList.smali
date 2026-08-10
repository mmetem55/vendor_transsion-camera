.class public final Lcom/bef/effectsdk/ModelsList;
.super Ljava/lang/Object;
.source "ModelsList.java"


# static fields
.field public static final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 174

    const-string v0, "model/jointmodel/tt_joints_v5.0.model"

    const-string v1, "model/autoreframemodel/bingo_image_saliency_v2.0.model"

    const-string v2, "model/facemaskmodel/tt_face_for_face_mask_v10.1.model"

    const-string v3, "model/facemaskmodel/tt_face_mask_v3.0.model"

    const-string v4, "model/havatarmodel/tt_havatar_det_v1.0.model"

    const-string v5, "model/havatarmodel/tt_havatar_lr_cls_v1.0.model"

    const-string v6, "model/havatarmodel/tt_havatar_pose_v1.0.model"

    const-string v7, "model/havatarmodel/tt_havatar_action_cls_v1.0.model"

    const-string v8, "model/havatarmodel/tt_havatar_lr_box_v1.0.model"

    const-string v9, "model/havatarmodel/tt_havatar_track_v1.0.model"

    const-string v10, "model/avatar3d/tt_avatar3d_v4.0.model"

    const-string v11, "model/avatar3d/tt_avatar3dsticker_v4.0.model"

    const-string v12, "model/face_lightmodel/tt_face_light_v2.0.model"

    const-string v13, "model/faceclustingmodel/tt_bigbrother_v6.0.model"

    const-string v14, "model/petfacemodel/tt_petface_v5.2.model"

    const-string v15, "model/catmodel/tt_catface_v3.0.model"

    const-string v16, "model/facefitting/tt_facefitting1220_v2.0.model"

    const-string v17, "model/facefitting/tt_facefitting1256_v2.0.model"

    const-string v18, "model/facefitting/tt_facefitting845_v2.1.model"

    const-string v19, "model/skysegmodel/tt_skyseg_v7.0.model"

    const-string v20, "model/head3d/tt_head3d_obj_v3.0.model"

    const-string v21, "model/head3d/tt_head3d_fitting_obj_v2.0.model"

    const-string v22, "model/hairflowmodel/tt_hair_flow_v1.0.model"

    const-string v23, "model/skeleton_model/tt_skeleton_v7.0.model"

    const-string v24, "model/humanparsingmodel/tt_human_parsing_for_jianying_v1.0.model"

    const-string v25, "model/humanparsingmodel/tt_human_parsing_v1.0.model"

    const-string v26, "model/objectdetection2model/tt_object_detection_2_v3.0.model"

    const-string v27, "model/skin_unifiedmodel/tt_skin_unified_v3.0.model"

    const-string v28, "model/nh/nodehub_relation_v1.0.model"

    const-string v29, "model/headsegmodel/tt_headseg_v6.0.model"

    const-string v30, "model/watchtryonmodel/tt_watch_tryon_v1.0.model"

    const-string v31, "model/video_transition/tt_videoTrans_v1.0.model"

    const-string v32, "model/memoji_match/tt_memoji_match_facial_v6.0.model"

    const-string v33, "model/memoji_match/tt_hair_feature_v4.0.model"

    const-string v34, "model/memoji_match/tt_memoji_match_glasses_v4.0.model"

    const-string v35, "model/memoji_match/tt_memoji_match_sun_v1.4.model"

    const-string v36, "model/memoji_match/memoji_match_features_v1.3.json"

    const-string v37, "model/buildingseg_model/bingo_building_seg_v2.0_size1.model"

    const-string v38, "model/buildingseg_model/bingo_building_seg_v2.0.model"

    const-string v39, "model/tt_navi_avatar_drive/navi_avatar_drive_v1.0.model"

    const-string v40, "model/clothessegmodel/tt_clothes_seg_v3.0.model"

    const-string v41, "model/tt_auto_detection/tt_object_detection_human_v1.0.model"

    const-string v42, "model/tt_auto_detection/tt_rpn_detection_v1.0.model"

    const-string v43, "model/object_tracking/bingo_objectTracking_v1.0.dat"

    const-string v44, "model/saliency_seg_model/bingo_saliency_seg_v1.0.model"

    const-string v45, "model/videoclsmodel/tt_videoCls_v4.0.model"

    const-string v46, "model/c2clsmodel/tt_C2Cls_v5.0.model"

    const-string v47, "model/car_landmarks/tt_car_landmarks_v3.0.model"

    const-string v48, "model/tt_salient_human/tt_salient_human_v1.0.model"

    const-string v49, "model/pornclsmodel/tt_porn_classifier_v2.0.model"

    const-string v50, "model/fsnew/tt_fsnew_base_tiny_v2.0.model"

    const-string v51, "model/fsnew/tt_fsnew_sm_extra_v2.0.model"

    const-string v52, "model/fsnew/tt_fsnew_v2.0.model"

    const-string v53, "model/fsnew/tt_fsnew_base_xingtu_v2.0.model"

    const-string v54, "model/fsnew/tt_fsnew_sm_extra_v3.0.model"

    const-string v55, "model/fsnew/tt_fsnew_base_multiperson_v2.0.model"

    const-string v56, "model/fsnew/tt_fsnew_extra_fast_v2.0.model"

    const-string v57, "model/fsnew/tt_fsnew_base_small_v2.0.model"

    const-string v58, "model/fsnew/tt_fsnew_v2.1.model"

    const-string v59, "model/fsnew/tt_fsnew_base_multiperson_v2.1.model"

    const-string v60, "model/fsnew/tt_fsnew_base_fast_v2.0.model"

    const-string v61, "model/fsnew/tt_fsnew_extra_v3.0.model"

    const-string v62, "model/fsnew/tt_fsnew_base_edularge_v2.1.model"

    const-string v63, "model/fsnew/tt_fsnew_base_edu_v2.0.model"

    const-string v64, "model/fsnew/tt_fsnew_extra_fastmask_v3.0.model"

    const-string v65, "model/fsnew/tt_fsnew_base_normal_v2.0.model"

    const-string v66, "model/fsnew/tt_fsnew_base_leaderrecognition_v2.0.model"

    const-string v67, "model/fsnew/tt_fsnew_base_edu_v2.1.model"

    const-string v68, "model/fsnew/tt_fsnew_base_edularge_v2.0.model"

    const-string v69, "model/faceganmodel/tt_facegan_class_v4.0.model"

    const-string v70, "model/mv_recommend/tt_mv_recommend_v5.0.model"

    const-string v71, "model/gazeestimationmodel/tt_gaze_v3.0.model"

    const-string v72, "model/c3clsmodel/tt_c3_cls_v1.0.model"

    const-string v73, "model/actionmodel/tt_action_detection_v5.0.model"

    const-string v74, "model/actionmodel/tt_pose_detection_v3.0.model"

    const-string v75, "model/hairparser/tt_hair_v11.0.model"

    const-string v76, "model/hairparser/tt_hair_tiaoran_seg_v1.0.model"

    const-string v77, "model/dyngestmodel/tt_tsm_action_v1.2.model"

    const-string v78, "model/avatar_drive/tt_avatar_drive_v1.0.model"

    const-string v79, "model/tt_audio_avatar/tt_audio_avatar_v1.0.model"

    const-string v80, "model/bingo_facegan_model/female_gan_v3.0.model"

    const-string v81, "model/ar_scan/tt_arscan_voc_v2.0.dat"

    const-string v82, "model/ar_scan/tt_arscan_raw_v2.0.dat"

    const-string v83, "model/avatar_upperbody3d/tt_avatar_upperbody3d_v4.0.model"

    const-string v84, "model/footmodel/tt_foot_v5.0.model"

    const-string v85, "model/earsegmodel/tt_earseg_kp_v1.0.model"

    const-string v86, "model/earsegmodel/tt_earseg_v2.0.model"

    const-string v87, "model/freidmodel/tt_freid_v1.0.model"

    const-string v88, "model/tt_car_series/tt_car_series_v1.0.model"

    const-string v89, "model/ttfacemodel/tt_face_extra_v13.0.model"

    const-string v90, "model/ttfacemodel/tt_face_v10.1.model"

    const-string v91, "model/ttfacemodel/tt_face_v10.0.model"

    const-string v92, "model/ttfacemodel/tt_face_extra_tob_v13.3.model"

    const-string v93, "model/ttfacemodel/tt_face_extra_fast_v13.0.model"

    const-string v94, "model/avacapmodel/tt_avacap_v1.2.model"

    const-string v95, "model/tt_face_quality/tt_quality_v1.0.model"

    const-string v96, "model/teethmodel/tt_teeth_v2.0.model"

    const-string v97, "model/idream/tt_idream_v1.0.model"

    const-string v98, "model/idream/tt_eyegrad_v1.0.model"

    const-string v99, "model/nailmodel/tt_nail_kpts_v3.0.model"

    const-string v100, "model/nailmodel/tt_nail_seg_v4.0.model"

    const-string v101, "model/scenerecognitionmodel/tt_c1_det_v3.0.model"

    const-string v102, "model/scenerecognitionmodel/tt_c1_small_v8.0.model"

    const-string v103, "model/forehead_segmodel/tt_forehead_seg_v1.0.model"

    const-string v104, "model/scene_normal_model/bingo_building_normal_v1.0.model"

    const-string v105, "model/scene_normal_model/bingo_scene_normal_v2.0.model"

    const-string v106, "model/skeleton_pose_3d_model/bingo_skeletonpose3d_v4.0.model"

    const-string v107, "model/similaritymodel/tt_sim_v3.0.model"

    const-string v108, "model/faceverifymodel/tt_faceverify_v7.0.model"

    const-string v109, "model/petmattingmodel/tt_pet_matting_large_v1.0.model"

    const-string v110, "model/tt_deepinpaint/tt_coarse_v1.2.model"

    const-string v111, "model/tt_deepinpaint/tt_fine_v1.2.model"

    const-string v112, "model/tt_deepinpaint/tt_xcbfine_v1.0.model"

    const-string v113, "model/tt_deepinpaint/tt_xcbcoarse_v1.0.model"

    const-string v114, "model/facebeautifymodel/tt_facebeautify_gan_v1.0.model"

    const-string v115, "model/facebeautifymodel/tt_facebeautify_v2.0.model"

    const-string v116, "model/facepartbeautymodel/tt_facepartbeauty_v2.0.model"

    const-string v117, "model/mugmodel/tt_mugdet_v4.0.model"

    const-string v118, "model/hand_object_segtrack_model/hand_object_segtrack_v1.0_size1.model"

    const-string v119, "model/hand_object_segtrack_model/hand_object_segtrack_v1.0_size0.model"

    const-string v120, "model/hand_object_segtrack_model/hand_object_segtrack_v1.0_size2.model"

    const-string v121, "model/handmodel/tt_hand_gesture_tob_v11.2.model"

    const-string v122, "model/handmodel/tt_hand_seg_v2.0.model"

    const-string v123, "model/handmodel/tt_hand_box_reg_v12.0.model"

    const-string v124, "model/handmodel/tt_hand_det_v11.0.model"

    const-string v125, "model/handmodel/tt_hand_kp3d_v2.0.model"

    const-string v126, "model/handmodel/tt_hand_gesture_v11.0.model"

    const-string v127, "model/handmodel/tt_hand_kp_v6.0.model"

    const-string v128, "model/handmodel/tt_hand_lr_v3.1.model"

    const-string v129, "model/handmodel/tt_hand_ring_v1.1.model"

    const-string v130, "model/scene_light/tt_scene_light_v1.0.model"

    const-string v131, "model/mattingmodel/tt_matting_subjgpu_v2.0.model"

    const-string v132, "model/mattingmodel/tt_matting_small_v14.0.model"

    const-string v133, "model/mattingmodel/tt_matting_livestream_v14.0.model"

    const-string v134, "model/mattingmodel/tt_matting_big_v14.0.model"

    const-string v135, "model/mattingmodel/tt_matting_large_v3.0.model"

    const-string v136, "model/mattingmodel/tt_matting_video_v1.0.model"

    const-string v137, "model/mattingmodel/tt_matting_v14.0.model"

    const-string v138, "model/mattingmodel/tt_matting_oproj_v1.0.model"

    const-string v139, "model/mattingmodel/tt_matting_subject_v5.1.model"

    const-string v140, "model/mattingmodel/tt_matting_subjcpu_v2.0.model"

    const-string v141, "model/slammodel/ttslammodel_v5.0.model"

    const-string v142, "model/groundSegmodel/tt_ground_seg_v3.0.model"

    const-string v143, "model/objectmodel/tt_object_detection_v4.0.model"

    const-string v144, "model/car_segmentation/tt_car_segmentation_v2.0.model"

    const-string v145, "model/facenewlandmarkmodel/tt_face_new_landmark_v2.0.model"

    const-string v146, "model/colorcard/lookup.png"

    const-string v147, "model/after_effect/tt_after_effect_v6.0.model"

    const-string v148, "model/tracking_ar/wanglaoji_v1.0.dat"

    const-string v149, "model/hdrnetmodel/tt_hdrnet_tone_v4.0.model"

    const-string v150, "model/hdrnetmodel/tt_hdrnet_effect_v4.0.model"

    const-string v151, "model/hdrnetmodel/tt_hdrnet_v7.0.model"

    const-string v152, "model/hdrnetmodel/tt_hdrnet_tonepic_v3.0.model"

    const-string v153, "model/memoji_matchsafe/tt_memoji_matchsafe_features_v3.2.model"

    const-string v154, "model/memoji_matchsafe/tt_memoji_matchsafe_hair_v1.4.model"

    const-string v155, "model/memoji_matchsafe/tt_memoji_matchsafe_facial_v1.5.model"

    const-string v156, "model/memoji_matchsafe/tt_memoji_matchsafe_glasses_v1.3.model"

    const-string v157, "model/memoji_matchsafe/tt_memoji_matchsafe_sun_v1.4.model"

    const-string v158, "model/clothmeshmodel/tt_clotheslandmark_v2.0.model"

    const-string v159, "model/hdrcolorcard/filter_v1.1.model"

    const-string v160, "model/ttfaceattrmodel/tt_beauty_attr6_v2.0.model"

    const-string v161, "model/ttfaceattrmodel/tt_face_attribute_tob_v8.0.model"

    const-string v162, "model/ttfaceattrmodel/tt_face_attribute_v7.2.model"

    const-string v163, "model/ttfaceattrmodel/tt_face_attribute_age_v1.1.model"

    const-string v164, "model/ttfaceattrmodel/tt_face_beauty_v5.0.model"

    const-string v165, "model/ttfaceattrmodel/tt_face_attribute_age_v2.1.model"

    const-string v166, "model/ttfaceattrmodel/tt_face_attribute_exp_v1.0.model"

    const-string v167, "model/ttfaceattrmodel/tt_face_attribute_extra_v3.0.model"

    const-string v168, "model/ttfaceattrmodel/tt_face_attribute_confused_v1.0.model"

    const-string v169, "model/ttfaceattrmodel/tt_face_attribute_tob_v7.0.model"

    const-string v170, "model/skin_seg/tt_skin_seg_v4.0.model"

    const-string v171, "model/skin_seg/tt_skin_seg_fast_v4.0.model"

    const-string v172, "model/depthmodel/tt_depth_heavy_v3.0.model"

    const-string v173, "model/depthmodel/tt_depth_estimation_v3.0.model"

    .line 8
    filled-new-array/range {v0 .. v173}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bef/effectsdk/ModelsList;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
