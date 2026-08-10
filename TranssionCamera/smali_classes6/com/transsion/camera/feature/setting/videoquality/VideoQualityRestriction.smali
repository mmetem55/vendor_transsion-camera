.class public Lcom/transsion/camera/feature/setting/videoquality/VideoQualityRestriction;
.super Ljava/lang/Object;
.source "VideoQualityRestriction.java"


# static fields
.field private static final sHighRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static final sMidRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 57
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityRestriction;->sHighRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 58
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityRestriction;->sMidRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_video_quality"

    .line 61
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v3, "key_video_portrait,key_video_facebeauty,key_anti_video,key_video_slimbody_info,key_video_slimbody_face_beauty,key_video_multi_face_beauty,key_mu_face_beauty,key_tran_plugin,key_video_makeup,key_com_video_hdr,key_transsion_filter,key_video_super_night_yuv,key_video_enhance_yuv,key_video_filter,key_video_effect,key_video_frame,key_video_super_night,key_video_enhance,key_auto_focus_switch"

    .line 63
    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 84
    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const/16 v4, 0x8

    .line 85
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "key_video_facebeauty"

    const-string v5, "video_facebeauty_off"

    const-string v6, "video_facebeauty_off,video_facebeauty_on"

    .line 86
    invoke-virtual {v3, v4, v5, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v7, "key_video_slimbody_info"

    const-string v8, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":0,\"shoulderSlim\":100,\"waistSlim\":100}"

    .line 87
    invoke-virtual {v3, v7, v8, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v9, "key_video_slimbody_face_beauty"

    const-string v10, "off"

    const-string v11, "null"

    .line 88
    invoke-virtual {v3, v9, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v12, "key_video_multi_face_beauty"

    .line 89
    invoke-virtual {v3, v12, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v13, "key_mu_face_beauty"

    .line 90
    invoke-virtual {v3, v13, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    const-string v14, "key_video_portrait"

    const-string v15, "off,on"

    .line 91
    invoke-virtual {v3, v14, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    move-object/from16 v16, v0

    const-string v0, "key_transsion_filter"

    move-object/from16 v17, v14

    const-string v14, "default"

    move-object/from16 v18, v13

    const/4 v13, 0x0

    .line 92
    invoke-virtual {v3, v0, v14, v13}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    move-object/from16 v19, v0

    const-string v0, "key_video_filter"

    move-object/from16 v20, v14

    const-string v14, "filter_default"

    .line 93
    invoke-virtual {v3, v0, v14, v13}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    move-object/from16 v21, v0

    const-string v0, "key_video_effect"

    move-object/from16 v22, v14

    const-string v14, "effect_default"

    .line 94
    invoke-virtual {v3, v0, v14, v13}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    move-object/from16 v23, v0

    const-string v0, "key_video_frame"

    move-object/from16 v24, v14

    const-string v14, "frame_default"

    .line 95
    invoke-virtual {v3, v0, v14, v13}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v3, "key_anti_video"

    .line 96
    invoke-virtual {v0, v3, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v14, "key_video_makeup"

    .line 97
    invoke-virtual {v0, v14, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v14, "key_video_super_night"

    .line 98
    invoke-virtual {v0, v14, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v14, "key_video_enhance"

    .line 99
    invoke-virtual {v0, v14, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v14, "key_video_super_night_yuv"

    .line 100
    invoke-virtual {v0, v14, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v14, "key_video_enhance_yuv"

    .line 101
    invoke-virtual {v0, v14, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v14, "key_com_video_hdr"

    .line 102
    invoke-virtual {v0, v14, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v14, "key_auto_focus_switch"

    .line 103
    invoke-virtual {v0, v14, v13, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 84
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 105
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const/16 v25, 0xb

    .line 106
    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v2, v13}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, v4, v5, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v7, v8, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v9, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v12, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    move-object/from16 v13, v18

    .line 111
    invoke-virtual {v0, v13, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    move-object/from16 v13, v17

    .line 112
    invoke-virtual {v0, v13, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    move-object/from16 v17, v12

    move-object/from16 v12, v20

    move-object/from16 v20, v11

    const/4 v11, 0x0

    move-object/from16 v27, v19

    move-object/from16 v19, v9

    move-object/from16 v9, v27

    .line 113
    invoke-virtual {v0, v9, v12, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    move-object/from16 v25, v9

    move-object/from16 v9, v22

    move-object/from16 v27, v21

    move-object/from16 v21, v12

    move-object/from16 v12, v27

    .line 114
    invoke-virtual {v0, v12, v9, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    move-object/from16 v9, v24

    move-object/from16 v27, v23

    move-object/from16 v23, v12

    move-object/from16 v12, v27

    .line 115
    invoke-virtual {v0, v12, v9, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v9, "key_video_frame"

    move-object/from16 v26, v12

    const-string v12, "frame_default"

    .line 116
    invoke-virtual {v0, v9, v12, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v3, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v9, "key_video_makeup"

    .line 118
    invoke-virtual {v0, v9, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v9, "key_video_super_night"

    .line 119
    invoke-virtual {v0, v9, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v9, "key_video_enhance"

    .line 120
    invoke-virtual {v0, v9, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v9, "key_video_super_night_yuv"

    .line 121
    invoke-virtual {v0, v9, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v9, "key_video_enhance_yuv"

    .line 122
    invoke-virtual {v0, v9, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v9, "key_com_video_hdr"

    .line 123
    invoke-virtual {v0, v9, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const/4 v9, 0x0

    .line 124
    invoke-virtual {v0, v14, v9, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 105
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 126
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v9, "6_60"

    invoke-direct {v0, v2, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0, v13, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0, v4, v5, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v7, v8, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    move-object/from16 v9, v19

    move-object/from16 v11, v20

    .line 131
    invoke-virtual {v0, v9, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    move-object/from16 v12, v17

    .line 132
    invoke-virtual {v0, v12, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    move-object/from16 v12, v18

    .line 133
    invoke-virtual {v0, v12, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {v0, v3, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    move-object/from16 v18, v3

    const-string v3, "key_video_makeup"

    .line 135
    invoke-virtual {v0, v3, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    move-object/from16 v20, v9

    move-object/from16 v19, v12

    move-object/from16 v3, v21

    move-object/from16 v12, v25

    const/4 v9, 0x0

    .line 136
    invoke-virtual {v0, v12, v3, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    move-object/from16 v3, v22

    move-object/from16 v12, v23

    .line 137
    invoke-virtual {v0, v12, v3, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    move-object/from16 v3, v24

    move-object/from16 v12, v26

    .line 138
    invoke-virtual {v0, v12, v3, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v3, "key_video_frame"

    const-string v12, "frame_default"

    .line 139
    invoke-virtual {v0, v3, v12, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v3, "key_com_video_hdr"

    .line 140
    invoke-virtual {v0, v3, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0, v14, v10, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v3, "key_video_enhance_yuv"

    .line 142
    invoke-virtual {v0, v3, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 126
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 144
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const/4 v3, 0x6

    .line 145
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, v13, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0, v4, v5, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0, v7, v8, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    move-object/from16 v3, v20

    .line 149
    invoke-virtual {v0, v3, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    move-object/from16 v9, v17

    .line 150
    invoke-virtual {v0, v9, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    move-object/from16 v12, v19

    .line 151
    invoke-virtual {v0, v12, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    move-object/from16 v17, v4

    move-object/from16 v4, v18

    .line 152
    invoke-virtual {v0, v4, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v4, "key_video_super_night"

    .line 153
    invoke-virtual {v0, v4, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v4, "key_video_enhance"

    .line 154
    invoke-virtual {v0, v4, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const/4 v4, 0x0

    .line 155
    invoke-virtual {v0, v14, v4, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 144
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 157
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const/16 v19, 0x5

    move-object/from16 v20, v5

    .line 158
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, v14, v4, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 157
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 161
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const/4 v4, 0x4

    .line 162
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, v13, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {v0, v7, v8, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {v0, v3, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {v0, v9, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {v0, v12, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const/4 v4, 0x0

    .line 168
    invoke-virtual {v0, v14, v4, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 161
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    move-object/from16 v0, v16

    .line 173
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v1, "key_video_portrait,key_anti_video,key_video_facebeauty,key_video_slimbody_info,key_video_slimbody_face_beauty,key_video_multi_face_beauty,key_video_multi_face_beauty,key_tran_plugin,key_video_makeup,key_com_video_hdr,key_transsion_filter,key_video_filter,key_video_effect,key_video_frame,key_video_super_night,key_video_enhance,key_video_super_night_yuv,key_video_enhance_yuv,key_auto_focus_switch"

    .line 175
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 195
    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const/16 v4, 0xb

    .line 196
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v17

    move-object/from16 v4, v20

    .line 197
    invoke-virtual {v1, v5, v4, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 198
    invoke-virtual {v1, v7, v8, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 199
    invoke-virtual {v1, v3, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 200
    invoke-virtual {v1, v9, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 201
    invoke-virtual {v1, v12, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 202
    invoke-virtual {v1, v13, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v20, v3

    move-object/from16 v19, v12

    move-object/from16 v17, v13

    move-object/from16 v13, v21

    move-object/from16 v12, v25

    const/4 v3, 0x0

    .line 203
    invoke-virtual {v1, v12, v13, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    .line 204
    invoke-virtual {v1, v13, v12, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v12, v24

    move-object/from16 v13, v26

    .line 205
    invoke-virtual {v1, v13, v12, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v12, "key_video_frame"

    const-string v13, "frame_default"

    .line 206
    invoke-virtual {v1, v12, v13, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v3, v18

    .line 207
    invoke-virtual {v1, v3, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 208
    invoke-virtual {v1, v9, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v12, "key_video_super_night"

    .line 209
    invoke-virtual {v1, v12, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v12, "key_video_enhance"

    .line 210
    invoke-virtual {v1, v12, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v12, "key_video_super_night_yuv"

    .line 211
    invoke-virtual {v1, v12, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v12, "key_video_enhance_yuv"

    .line 212
    invoke-virtual {v1, v12, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v12, "key_com_video_hdr"

    .line 213
    invoke-virtual {v1, v12, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v12, "key_video_makeup"

    .line 214
    invoke-virtual {v1, v12, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const/4 v12, 0x0

    .line 215
    invoke-virtual {v1, v14, v12, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 217
    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const/4 v12, 0x6

    .line 218
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v2, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1, v5, v4, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 220
    invoke-virtual {v1, v7, v8, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v12, v20

    .line 221
    invoke-virtual {v1, v12, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 222
    invoke-virtual {v1, v9, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v13, v19

    .line 223
    invoke-virtual {v1, v13, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const/4 v3, 0x0

    .line 224
    invoke-virtual {v1, v14, v3, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 226
    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "6_60"

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1, v5, v4, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 229
    invoke-virtual {v1, v7, v8, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 230
    invoke-virtual {v1, v12, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 231
    invoke-virtual {v1, v9, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 232
    invoke-virtual {v1, v13, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v3, v17

    .line 233
    invoke-virtual {v1, v3, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v3, v18

    .line 234
    invoke-virtual {v1, v3, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v16, v9

    move-object/from16 v3, v21

    move-object/from16 v13, v25

    const/4 v9, 0x0

    .line 235
    invoke-virtual {v1, v13, v3, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v20, v3

    move-object/from16 v3, v22

    move-object/from16 v13, v23

    .line 236
    invoke-virtual {v1, v13, v3, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v21, v13

    move-object/from16 v3, v24

    move-object/from16 v13, v26

    .line 237
    invoke-virtual {v1, v13, v3, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v3, "key_video_frame"

    move-object/from16 v23, v13

    const-string v13, "frame_default"

    .line 238
    invoke-virtual {v1, v3, v13, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v3, "key_video_super_night"

    .line 239
    invoke-virtual {v1, v3, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v3, "key_video_enhance"

    .line 240
    invoke-virtual {v1, v3, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v3, "key_video_super_night_yuv"

    .line 241
    invoke-virtual {v1, v3, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v3, "key_video_enhance_yuv"

    .line 242
    invoke-virtual {v1, v3, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v3, "key_com_video_hdr"

    .line 243
    invoke-virtual {v1, v3, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 244
    invoke-virtual {v1, v14, v10, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v3, "key_video_makeup"

    .line 245
    invoke-virtual {v1, v3, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 247
    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const/16 v3, 0x8

    .line 248
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v1, v5, v4, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 250
    invoke-virtual {v1, v7, v8, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 251
    invoke-virtual {v1, v12, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v3, v16

    .line 252
    invoke-virtual {v1, v3, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v9, v19

    .line 253
    invoke-virtual {v1, v9, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v13, v17

    .line 254
    invoke-virtual {v1, v13, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v13, v20

    move-object/from16 v9, v25

    move-object/from16 v20, v12

    const/4 v12, 0x0

    .line 255
    invoke-virtual {v1, v9, v13, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v9, v22

    move-object/from16 v27, v21

    move-object/from16 v21, v13

    move-object/from16 v13, v27

    .line 256
    invoke-virtual {v1, v13, v9, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v9, v24

    move-object/from16 v27, v23

    move-object/from16 v23, v13

    move-object/from16 v13, v27

    .line 257
    invoke-virtual {v1, v13, v9, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v9, "key_video_frame"

    move-object/from16 v26, v13

    const-string v13, "frame_default"

    .line 258
    invoke-virtual {v1, v9, v13, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v9, v18

    .line 259
    invoke-virtual {v1, v9, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 260
    invoke-virtual {v1, v3, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v12, "key_video_super_night"

    .line 261
    invoke-virtual {v1, v12, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v12, "key_video_enhance"

    .line 262
    invoke-virtual {v1, v12, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v12, "key_video_super_night_yuv"

    .line 263
    invoke-virtual {v1, v12, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v12, "key_video_enhance_yuv"

    .line 264
    invoke-virtual {v1, v12, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v12, "key_com_video_hdr"

    .line 265
    invoke-virtual {v1, v12, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v12, "key_video_makeup"

    .line 266
    invoke-virtual {v1, v12, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const/4 v12, 0x0

    .line 267
    invoke-virtual {v1, v14, v12, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 268
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 269
    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const/4 v13, 0x5

    .line 270
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v2, v13}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v1, v14, v12, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 272
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 269
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 273
    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v12, "8_60"

    invoke-direct {v1, v2, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v1, v5, v4, v6}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 276
    invoke-virtual {v1, v7, v8, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v4, v20

    .line 277
    invoke-virtual {v1, v4, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 278
    invoke-virtual {v1, v3, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v5, v19

    .line 279
    invoke-virtual {v1, v5, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v6, v17

    .line 280
    invoke-virtual {v1, v6, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 281
    invoke-virtual {v1, v9, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 282
    invoke-virtual {v1, v3, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v9, v21

    move-object/from16 v12, v25

    const/4 v13, 0x0

    .line 283
    invoke-virtual {v1, v12, v9, v13}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v9, v22

    move-object/from16 v12, v23

    .line 284
    invoke-virtual {v1, v12, v9, v13}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    move-object/from16 v9, v24

    move-object/from16 v12, v26

    .line 285
    invoke-virtual {v1, v12, v9, v13}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v9, "key_video_frame"

    const-string v12, "frame_default"

    .line 286
    invoke-virtual {v1, v9, v12, v13}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v9, "key_video_super_night"

    .line 287
    invoke-virtual {v1, v9, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v9, "key_video_enhance"

    .line 288
    invoke-virtual {v1, v9, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v9, "key_video_super_night_yuv"

    .line 289
    invoke-virtual {v1, v9, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v9, "key_video_enhance_yuv"

    .line 290
    invoke-virtual {v1, v9, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v9, "key_com_video_hdr"

    .line 291
    invoke-virtual {v1, v9, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 292
    invoke-virtual {v1, v14, v10, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const-string v9, "key_video_makeup"

    .line 293
    invoke-virtual {v1, v9, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 294
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 273
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 295
    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const/4 v9, 0x4

    .line 296
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v2, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v1, v6, v10, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 298
    invoke-virtual {v1, v7, v8, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 299
    invoke-virtual {v1, v4, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 300
    invoke-virtual {v1, v3, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 301
    invoke-virtual {v1, v5, v10, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 302
    invoke-virtual {v1, v14, v2, v15}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 303
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 295
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;
    .locals 4

    const/4 v0, 0x6

    .line 314
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 315
    sget-object p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityRestriction;->sHighRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    goto :goto_0

    .line 317
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityRestriction;->sMidRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 319
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    const-string v2, "0"

    if-eqz v1, :cond_2

    .line 321
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "key_video_multi_face_beauty"

    .line 322
    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p0, "1"

    .line 323
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "key_video_slimbody_info"

    .line 324
    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    const-string p0, "key_video_slimbody_face_beauty"

    .line 325
    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "_"

    .line 328
    invoke-static {p2, p1}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v3, 0x5

    if-le p1, v3, :cond_3

    .line 330
    invoke-static {p0, p2, p3}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityRestriction;->mergeRelation(Lcom/transsion/camera/app/common/relation/RelationGroup;Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 334
    :cond_3
    :goto_1
    invoke-static {}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getItelFaceBeautyStyle()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_4

    .line 335
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lt p0, v0, :cond_4

    const/4 p0, 0x0

    const-string p1, "key_face_beauty"

    .line 336
    invoke-virtual {v1, p1, v2, p0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v1
.end method

.method private static mergeRelation(Lcom/transsion/camera/app/common/relation/RelationGroup;Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;
    .locals 4

    .line 343
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v1, "key_video_quality"

    invoke-direct {v0, v1, p1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_video_facebeauty"

    const-string v2, "video_facebeauty_off"

    const-string v3, "video_facebeauty_off,video_facebeauty_on"

    .line 344
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v1, "key_video_slimbody_info"

    const-string v2, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":0,\"shoulderSlim\":100,\"waistSlim\":100}"

    .line 345
    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v1, "key_video_slimbody_face_beauty"

    const-string v2, "off"

    const-string v3, "null"

    .line 346
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v1, "key_video_multi_face_beauty"

    .line 347
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v1, "key_mu_face_beauty"

    .line 348
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v1, "key_video_makeup"

    const-string v3, "off,on"

    .line 349
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v1, "key_video_portrait"

    .line 350
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v1, "key_anti_video"

    .line 351
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v1, "key_com_video_hdr"

    .line 352
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 343
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 354
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method
