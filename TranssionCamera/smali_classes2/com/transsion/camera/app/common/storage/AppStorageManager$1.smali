.class Lcom/transsion/camera/app/common/storage/AppStorageManager$1;
.super Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;
.source "AppStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/storage/AppStorageManager;->requestExternalStoragePermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/storage/AppStorageManager;Landroid/content/Intent;ILandroid/content/ContentResolver;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    iput-object p4, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;-><init>(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 3

    .line 340
    invoke-static {}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestExternalStoragePermission onActivityResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$202(Lcom/transsion/camera/app/common/storage/AppStorageManager;Z)Z

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 343
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$300(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V

    return-void

    :cond_0
    if-eqz p2, :cond_3

    .line 346
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 349
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 352
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 354
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$400(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Landroid/os/storage/StorageVolume;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$500(Landroid/os/storage/StorageVolume;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 355
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 356
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$300(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V

    .line 357
    invoke-static {}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestExternalStoragePermission fail  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 360
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result p2

    and-int/lit8 p2, p2, 0x3

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 364
    iget-object p2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$600(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/StorageSetting;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/storage/StorageSetting;->syncValueToDataStore()V

    .line 365
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;->this$0:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->access$700(Lcom/transsion/camera/app/common/storage/AppStorageManager;Landroid/net/Uri;)V

    :cond_3
    :goto_0
    return-void
.end method
