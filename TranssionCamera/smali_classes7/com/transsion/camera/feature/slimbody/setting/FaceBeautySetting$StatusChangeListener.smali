.class Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting$StatusChangeListener;
.super Ljava/lang/Object;
.source "FaceBeautySetting.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;
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
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 34
    invoke-static {}, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

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

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "key_slimbody_face_beauty"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->access$200(Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :goto_0
    return-void
.end method
