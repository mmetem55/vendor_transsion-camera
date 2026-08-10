.class Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$3;
.super Ljava/lang/Object;
.source "CommonFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/capture/CaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$3;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureSaved(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public onPixelDone([III)V
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$3;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$002(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;Z)Z

    return-void
.end method
