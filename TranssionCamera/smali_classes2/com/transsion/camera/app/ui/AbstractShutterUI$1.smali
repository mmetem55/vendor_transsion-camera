.class Lcom/transsion/camera/app/ui/AbstractShutterUI$1;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "AbstractShutterUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractShutterUI;->transitionToSmall()V
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

    .line 342
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 353
    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 354
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$200(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "transitionToSmall, end Animation"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 355
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$300(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    .line 356
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setEnable(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 345
    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 346
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$200(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "transitionToSmall, start Animation"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setEnable(Z)V

    return-void
.end method
