.class Lcom/transsion/camera/app/ui/AbstractShutterUI$4;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "AbstractShutterUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractShutterUI;->transitionToIdle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$4;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 466
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$4;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$400(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 467
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$4;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$300(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    return-void
.end method
