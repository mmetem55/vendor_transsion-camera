.class Lcom/transsion/camera/app/common/storage/AppStorageManager$2;
.super Landroid/content/BroadcastReceiver;
.source "AppStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/AppStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 421
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.os.storage.extra.STORAGE_VOLUME"

    .line 422
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/storage/StorageVolume;

    .line 423
    invoke-static {}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEDIA Receiver onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$800(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$900(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageVolume;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    invoke-static {}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "return because action on OTG storage."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, -0x1

    .line 433
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v3

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-eqz p2, :cond_5

    .line 435
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$400(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Landroid/os/storage/StorageVolume;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/storage/StorageVolume;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 436
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1000(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V

    .line 437
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1100(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 438
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1100(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;->onSDCardUnMounted()V

    goto :goto_1

    .line 440
    :cond_5
    invoke-static {p2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1200(Landroid/os/storage/StorageVolume;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 441
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1, v3}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1302(Lcom/transsion/camera/app/common/storage/AppStorageManager;Z)Z

    .line 442
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1400(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->updateStorageVolume(Landroid/os/storage/StorageVolume;)V

    .line 443
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1400(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1300(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->setStorageAvailable(Z)V

    goto :goto_1

    .line 459
    :pswitch_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1100(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 460
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1100(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;->onMediaScannerFinished()V

    goto :goto_1

    .line 447
    :pswitch_2
    invoke-static {p2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1200(Landroid/os/storage/StorageVolume;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 448
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1, v2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1302(Lcom/transsion/camera/app/common/storage/AppStorageManager;Z)Z

    .line 449
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1400(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->updateStorageVolume(Landroid/os/storage/StorageVolume;)V

    .line 450
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1400(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1300(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->setStorageAvailable(Z)V

    goto :goto_1

    .line 452
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1100(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 453
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1100(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;->onSDCardMounted()V

    .line 455
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p0, p2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$1500(Lcom/transsion/camera/app/common/storage/AppStorageManager;Landroid/os/storage/StorageVolume;)V

    :cond_8
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5a4113c8 -> :sswitch_2
        -0x4418042d -> :sswitch_1
        -0x254e496f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
