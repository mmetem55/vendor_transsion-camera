.class Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;
.super Ljava/lang/Object;
.source "AppStorageManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/AppStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/storage/AppStorageManager;Lcom/transsion/camera/app/common/storage/AppStorageManager$1;)V
    .locals 0

    .line 469
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;-><init>(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 469
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 472
    invoke-static {}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStorageSetting changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsResumed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1600(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mExternalStorageVolume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    .line 473
    invoke-static {v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$400(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Landroid/os/storage/StorageVolume;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 474
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1600(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "external"

    .line 478
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$400(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Landroid/os/storage/StorageVolume;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 479
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1702(Lcom/transsion/camera/app/common/storage/AppStorageManager;Z)Z

    .line 480
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1800(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V

    goto :goto_0

    .line 482
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    const/4 p1, 0x0

    const-string p2, "internal"

    invoke-static {p0, p2, p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1900(Lcom/transsion/camera/app/common/storage/AppStorageManager;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
