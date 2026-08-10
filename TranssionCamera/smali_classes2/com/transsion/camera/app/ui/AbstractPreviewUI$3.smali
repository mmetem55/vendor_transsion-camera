.class Lcom/transsion/camera/app/ui/AbstractPreviewUI$3;
.super Ljava/lang/Object;
.source "AbstractPreviewUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractPreviewUI;->doSetPreviewSize(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;II)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$3;->val$width:I

    iput p3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$3;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$500(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/ui/preview/IPreviewController;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$3;->val$width:I

    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$3;->val$height:I

    invoke-interface {v0, v1, p0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->setFixedSize(II)V

    return-void
.end method
