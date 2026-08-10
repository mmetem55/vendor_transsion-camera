.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$3;
.super Ljava/lang/Object;
.source "DualVideoMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$3;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$3;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$1100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Ljava/lang/String;

    .line 562
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$3;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->startAnimation(Landroid/view/View;)V

    return-void
.end method
