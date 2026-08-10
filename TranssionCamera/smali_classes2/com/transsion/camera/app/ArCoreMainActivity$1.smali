.class Lcom/transsion/camera/app/ArCoreMainActivity$1;
.super Ljava/lang/Object;
.source "ArCoreMainActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ArCoreMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ArCoreMainActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ArCoreMainActivity;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity$1;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerFinished()V
    .locals 0

    return-void
.end method

.method public onOperatorChanged(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$1;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$300(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    .line 230
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$1;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$402(Lcom/transsion/camera/app/ArCoreMainActivity;Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

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
