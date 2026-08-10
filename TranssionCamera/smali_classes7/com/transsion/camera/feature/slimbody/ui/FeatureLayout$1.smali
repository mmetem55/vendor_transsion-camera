.class Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$1;
.super Ljava/util/ArrayList;
.source "FeatureLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 9

    .line 75
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    new-instance v6, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    sget v7, Lcom/transsion/camera/feature/slimbody/R$layout;->slimbody_feature_item:I

    sget v3, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_preset_close:I

    sget v4, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_facebeauty_slimbody_switch:I

    const/4 v1, 0x0

    const-string v5, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":6,\"shoulderSlim\":100,\"waistSlim\":100}"

    move-object v0, v6

    move v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v6, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    sget v3, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_preset_reset:I

    sget v4, Lcom/transsion/camera/feature/slimbody/R$drawable;->ic_multi_reset_selector:I

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v6, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    sget v3, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_preset_autoAi:I

    sget v4, Lcom/transsion/camera/feature/slimbody/R$drawable;->ic_multi_fb_ai_selector:I

    const/4 v1, 0x2

    const-string v5, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100, \"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":1,\"shoulderSlim\":100,\"waistSlim\":100}"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v6, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    sget v3, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_custom_body_slim:I

    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isSouthAsia()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_slimbody_bodyslim_south_asia:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_slimbody_bodyslim:I

    :goto_0
    move v4, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x3

    move-object v0, v6

    move v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v6, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    const/4 v1, 0x4

    sget v3, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_custom_head_shrink:I

    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isSouthAsia()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_slimbody_headshrink_south_asia:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_slimbody_headshrink:I

    :goto_1
    move v4, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v6, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    const/4 v1, 0x5

    sget v3, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_custom_shoulder_slim:I

    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isSouthAsia()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_slimbody_shoulderslim_south_asia:I

    goto :goto_2

    :cond_2
    sget v0, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_slimbody_shoulderslim:I

    :goto_2
    move v4, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v6, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    const/4 v1, 0x6

    sget v3, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_custom_waist_slim:I

    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isSouthAsia()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_slimbody_waistslim_south_asia:I

    goto :goto_3

    :cond_3
    sget v0, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_slimbody_waistslim:I

    :goto_3
    move v4, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v6, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    const/4 v1, 0x7

    sget v3, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_custom_butt_plump:I

    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isSouthAsia()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_slimbody_buttplump_south_asia:I

    goto :goto_4

    :cond_4
    sget v0, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_slimbody_buttplump:I

    :goto_4
    move v4, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v6, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    const/16 v1, 0x8

    sget v3, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_custom_leg_slim:I

    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isSouthAsia()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_slimbody_legslim_south_asia:I

    goto :goto_5

    :cond_5
    sget v0, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_slimbody_legslim:I

    :goto_5
    move v4, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v6, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    const/16 v1, 0x9

    sget v3, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_custom_leg_lengthen:I

    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isSouthAsia()Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_slimbody_leglengthen_south_asia:I

    goto :goto_6

    :cond_6
    sget v0, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_slimbody_leglengthen:I

    :goto_6
    move v4, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
