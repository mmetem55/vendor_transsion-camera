.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$2;
.super Ljava/lang/Object;
.source "VideoFaceBeautySettingUI.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 92
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->access$100(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;->access$100(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    :cond_0
    return-void
.end method
