.class Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$6;
.super Ljava/lang/Object;
.source "RecorderUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->showConfirmDialog(IIILcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$6;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 704
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI$6;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->access$1300(Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;)Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
