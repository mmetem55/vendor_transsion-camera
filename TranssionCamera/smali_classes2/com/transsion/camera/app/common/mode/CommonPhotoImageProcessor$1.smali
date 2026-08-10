.class Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$1;
.super Ljava/lang/Object;
.source "CommonPhotoImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->realReleaseImageProcessor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->releaseAlgorithm()V

    return-void
.end method
