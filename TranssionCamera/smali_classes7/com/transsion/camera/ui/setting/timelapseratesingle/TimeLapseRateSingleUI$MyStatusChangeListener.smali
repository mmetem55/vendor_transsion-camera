.class Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$MyStatusChangeListener;
.super Ljava/lang/Object;
.source "TimeLapseRateSingleUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyStatusChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$1;)V
    .locals 0

    .line 289
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$MyStatusChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 289
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$MyStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 293
    invoke-static {}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyStatusChangeListener: key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , value="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
