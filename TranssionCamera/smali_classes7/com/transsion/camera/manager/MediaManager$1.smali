.class Lcom/transsion/camera/manager/MediaManager$1;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/manager/MediaManager;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/manager/MediaManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/manager/MediaManager;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/manager/MediaManager$1;->this$0:Lcom/transsion/camera/manager/MediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerFinished()V
    .locals 0

    return-void
.end method

.method public onOperatorChanged(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .locals 0

    return-void
.end method

.method public onSDCardMounted()V
    .locals 0

    return-void
.end method

.method public onSDCardUnMounted()V
    .locals 0

    return-void
.end method
