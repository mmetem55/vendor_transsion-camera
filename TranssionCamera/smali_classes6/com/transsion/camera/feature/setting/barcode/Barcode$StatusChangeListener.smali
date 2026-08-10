.class Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;
.super Ljava/lang/Object;
.source "Barcode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/barcode/Barcode;
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
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/barcode/Barcode;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/barcode/Barcode;Lcom/transsion/camera/feature/setting/barcode/Barcode$1;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/barcode/Barcode;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 129
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$100(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged] key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "key_setting_fragment_notify_ui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p2, "key_picture_size"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$200(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$200(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p1, "begin"

    .line 141
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$302(Lcom/transsion/camera/feature/setting/barcode/Barcode;Z)Z

    goto :goto_0

    :cond_2
    const-string p1, "end"

    .line 143
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$302(Lcom/transsion/camera/feature/setting/barcode/Barcode;Z)Z

    :cond_3
    :goto_0
    return-void
.end method
