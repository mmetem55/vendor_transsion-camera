.class Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SettingTopLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->hideAnimate(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;Landroid/view/View;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$1;->val$view:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
