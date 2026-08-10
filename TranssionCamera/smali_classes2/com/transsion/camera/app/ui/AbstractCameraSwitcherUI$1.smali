.class Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$1;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "AbstractCameraSwitcherUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p1, :cond_0

    .line 143
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->access$200(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)V

    :cond_0
    return-void
.end method
