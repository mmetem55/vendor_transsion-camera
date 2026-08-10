.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$5;
.super Ljava/util/ArrayList;
.source "VideoFaceBeautyExRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V
    .locals 5

    .line 291
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$5;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->btn_facebeauty_slimbody_switch:I

    sget v2, Lcom/transsion/camera/feature/makeup/R$string;->mu_item_no_effect:I

    const/4 v3, 0x0

    const-string v4, "off"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_ai_selector:I

    sget v2, Lcom/transsion/camera/feature/makeup/R$string;->multi_fb_hint_ai_enbale:I

    const/4 v3, 0x2

    const-string v4, "aiv2"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_smooth_selector:I

    sget v2, Lcom/transsion/camera/feature/makeup/R$string;->multi_fb_hint_feature_smooth:I

    const/4 v3, 0x3

    const-string v4, "soften"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_skin_selector:I

    sget v2, Lcom/transsion/camera/feature/makeup/R$string;->multi_fb_hint_feature_skin:I

    const/4 v3, 0x4

    const-string v4, "whiten"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_face_selector:I

    sget v2, Lcom/transsion/camera/feature/makeup/R$string;->multi_fb_hint_feature_face:I

    const/4 v3, 0x5

    const-string v4, "face"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_eye_selector:I

    sget v2, Lcom/transsion/camera/feature/makeup/R$string;->multi_fb_hint_feature_eye:I

    const/4 v3, 0x6

    const-string v4, "eye"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_cutting_face_selector:I

    sget v2, Lcom/transsion/camera/feature/makeup/R$string;->multi_fb_hint_feature_cutting_face:I

    const/4 v3, 0x7

    const-string v4, "cuttingface"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_nose_selector:I

    sget v2, Lcom/transsion/camera/feature/makeup/R$string;->multi_fb_hint_feature_nose:I

    const/16 v3, 0x8

    const-string v4, "nose"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_head_selector:I

    sget v2, Lcom/transsion/camera/feature/makeup/R$string;->slimbody_custom_head_shrink:I

    const/16 v3, 0x9

    const-string v4, "head"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->access$000(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 303
    new-instance p1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    const/16 v0, 0xe

    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_five_senses_selector:I

    sget v2, Lcom/transsion/camera/feature/makeup/R$string;->multi_fb_feature_five_senses:I

    const-string v3, "five_senses"

    invoke-direct {p1, v0, v3, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_0
    new-instance p1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    const/4 v0, 0x1

    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_reset_selector:I

    sget v2, Lcom/transsion/camera/feature/makeup/R$string;->multi_face_beauty_dailog_Positive_title:I

    const-string v3, "reset"

    invoke-direct {p1, v0, v3, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
