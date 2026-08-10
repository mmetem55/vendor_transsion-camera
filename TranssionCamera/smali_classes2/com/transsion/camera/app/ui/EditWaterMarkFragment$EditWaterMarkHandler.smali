.class Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;
.super Landroid/os/Handler;
.source "EditWaterMarkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/EditWaterMarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditWaterMarkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/os/Looper;)V
    .locals 0

    .line 760
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 761
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/os/Looper;Lcom/transsion/camera/app/ui/EditWaterMarkFragment$1;)V
    .locals 0

    .line 758
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 766
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_1

    .line 782
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->access$600(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 783
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityWaterMark:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->callOnClick()Z

    goto :goto_1

    .line 768
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 771
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 773
    :try_start_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->access$400(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 775
    invoke-static {}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 777
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->access$600(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 778
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    iget-object v0, p1, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->access$600(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "key_city_watermark_info"

    invoke-virtual {v0, v2, p1, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    return-void
.end method
