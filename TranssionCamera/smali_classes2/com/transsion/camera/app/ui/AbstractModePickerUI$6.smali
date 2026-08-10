.class Lcom/transsion/camera/app/ui/AbstractModePickerUI$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AbstractModePickerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractModePickerUI;->hideModePicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)V
    .locals 0

    .line 689
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$6;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 692
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractModePickerUI$6;->this$0:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->access$2000(Lcom/transsion/camera/app/ui/AbstractModePickerUI;)Landroid/widget/FrameLayout;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
