.class Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;
.super Ljava/lang/Object;
.source "VideoQuality.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangeListener"
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
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$1;)V
    .locals 0

    .line 426
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 426
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 430
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "key_quality_recover_default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "null"

    .line 432
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 433
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->access$700(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->access$800(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->access$900(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->access$1000(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 434
    invoke-static {}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->access$1100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "david VideoQuality recover to default."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 435
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->access$1200(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->access$1300(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;Ljava/lang/String;)V

    goto :goto_0

    .line 438
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->access$700(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->access$1400(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
