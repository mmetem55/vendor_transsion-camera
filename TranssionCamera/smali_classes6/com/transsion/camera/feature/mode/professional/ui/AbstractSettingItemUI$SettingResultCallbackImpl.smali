.class Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SettingResultCallbackImpl;
.super Ljava/lang/Object;
.source "AbstractSettingItemUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingResultCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SettingResultCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$1;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SettingResultCallbackImpl;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .locals 2

    .line 174
    invoke-static {}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SettingResultCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
