.class Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$2;
.super Ljava/util/ArrayList;
.source "FaceBeautyRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 14

    .line 83
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    new-instance v6, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_ai_selector:I

    sget v13, Lcom/transsion/camera/feature/makeup/R$layout;->feature_item:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$string;->multi_fb_hint_ai_enbale:I

    const/4 v1, 0x1

    const-string v2, "aiv2"

    move-object v0, v6

    move v4, v13

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;

    sget v10, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_smooth_selector:I

    sget v12, Lcom/transsion/camera/feature/makeup/R$string;->multi_fb_hint_feature_smooth:I

    const/4 v8, 0x2

    const-string v9, "soften"

    move-object v7, v0

    move v11, v13

    invoke-direct/range {v7 .. v12}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;

    sget v10, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_skin_selector:I

    sget v12, Lcom/transsion/camera/feature/makeup/R$string;->multi_fb_hint_feature_skin:I

    const/4 v8, 0x3

    const-string v9, "whiten"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;

    sget v10, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_face_selector:I

    sget v12, Lcom/transsion/camera/feature/makeup/R$string;->multi_fb_hint_feature_face:I

    const/4 v8, 0x4

    const-string v9, "face"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;

    sget v10, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_eye_selector:I

    sget v12, Lcom/transsion/camera/feature/makeup/R$string;->multi_fb_hint_feature_eye:I

    const/4 v8, 0x5

    const-string v9, "eye"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;

    sget v4, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_reset_selector:I

    sget v5, Lcom/transsion/camera/feature/makeup/R$layout;->restore_layout:I

    sget v6, Lcom/transsion/camera/feature/makeup/R$string;->slimbody_preset_sure:I

    const/4 v2, 0x0

    const-string v3, "reset"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
