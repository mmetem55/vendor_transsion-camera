.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$4;
.super Ljava/util/ArrayList;
.source "VideoFaceBeautyExRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    .line 201
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_skin_neutral_selector:I

    sget v2, Lcom/transsion/camera/feature/makeup/R$string;->multi_fb_hint_feature_skin_neutral:I

    const/16 v3, 0xa

    const-string v4, "neutral"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_skin_cold_selector:I

    sget v2, Lcom/transsion/camera/feature/makeup/R$string;->multi_fb_hint_feature_skin_cold:I

    const/16 v3, 0xb

    const-string v4, "cold"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_skin_warm_selector:I

    sget v2, Lcom/transsion/camera/feature/makeup/R$string;->multi_fb_hint_feature_skin_warm:I

    const/16 v3, 0xc

    const-string v4, "warm"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_skin_brown_selector:I

    sget v2, Lcom/transsion/camera/feature/makeup/R$string;->multi_fb_hint_feature_skin_brown:I

    const/16 v3, 0xd

    const-string v4, "brown"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
