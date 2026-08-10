.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$2;
.super Ljava/lang/Object;
.source "DualVideoPreviewUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->initDualDeviceLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$2;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 347
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$2;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->showOrhideDualVideoGroupItem()V

    .line 348
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$2;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)V

    return-void
.end method
