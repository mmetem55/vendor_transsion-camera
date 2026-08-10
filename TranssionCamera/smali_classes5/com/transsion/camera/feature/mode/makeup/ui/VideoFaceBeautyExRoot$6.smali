.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$6;
.super Ljava/util/HashMap;
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
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V
    .locals 2

    .line 308
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$6;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 310
    sget v0, Lcom/transsion/camera/feature/makeup/R$drawable;->btn_facebeauty_slimbody_switch:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->btn_slimbody_switch_lowlight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget v0, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_ai_selector:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_ai_selector_black:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget v0, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_smooth_selector:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_smooth_selector_black:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget v0, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_skin_selector:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_skin_selector_black:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget v0, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_face_selector:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_face_selector_black:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget v0, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_eye_selector:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_eye_selector_black:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget v0, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_cutting_face_selector:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_cutting_face_selector_black:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget v0, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_nose_selector:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_nose_selector_black:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget v0, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_head_selector:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_head_selector_black:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->access$000(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 320
    sget p1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_five_senses_selector:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_five_senses_selector_black:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :cond_0
    sget p1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_reset_selector:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_reset_selector_black:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
