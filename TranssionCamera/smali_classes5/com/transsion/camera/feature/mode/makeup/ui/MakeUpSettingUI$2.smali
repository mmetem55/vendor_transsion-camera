.class Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$2;
.super Ljava/lang/Object;
.source "MakeUpSettingUI.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 80
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->access$000(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$2;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->access$000(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_0
    return-void
.end method
