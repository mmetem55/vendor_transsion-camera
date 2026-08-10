.class Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$1;
.super Ljava/lang/Object;
.source "BeautySettingUI.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 71
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->access$000(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->access$000(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->access$100(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->access$200(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)V

    :cond_0
    return-void
.end method
