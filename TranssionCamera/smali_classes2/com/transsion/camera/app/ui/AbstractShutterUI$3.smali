.class Lcom/transsion/camera/app/ui/AbstractShutterUI$3;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "AbstractShutterUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractShutterUI;->transitionToProcessing()V
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

    .line 418
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 421
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$300(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    return-void
.end method
