.class Lcom/transsion/camera/app/common/storage/StorageSetting;
.super Ljava/lang/Object;
.source "StorageSetting.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/storage/StorageSetting$RestoreSettingListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentValue:Ljava/lang/String;

.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDefaultValue:Ljava/lang/String;

.field private final mKey:Ljava/lang/String;

.field private mSettingRestoreListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private final mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "StorageSetting"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/storage/StorageSetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/transsion/camera/app/common/storage/StorageSetting$RestoreSettingListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/storage/StorageSetting$RestoreSettingListener;-><init>(Lcom/transsion/camera/app/common/storage/StorageSetting;Lcom/transsion/camera/app/common/storage/StorageSetting$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mSettingRestoreListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mSupported:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mKey:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 37
    iput-object p3, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez p3, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p3, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/common/storage/StorageSetting;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method disableExternalStorage()V
    .locals 2

    .line 99
    sget-object v0, Lcom/transsion/camera/app/common/storage/StorageSetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "disableExternalStorage"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mSupported:Ljava/util/List;

    const-string v1, "external"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mSupported:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v0, "internal"

    .line 102
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/StorageSetting;->onValueChanged(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method enableExternalStorage()V
    .locals 2

    .line 89
    sget-object v0, Lcom/transsion/camera/app/common/storage/StorageSetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "enableExternalStorage"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mSupported:Ljava/util/List;

    const-string v1, "external"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mSupported:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getCurrentCameraId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentStreamIds()[I
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mCurrentValue:Ljava/lang/String;

    return-object p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mSupported:Ljava/util/List;

    return-object p0
.end method

.method public init(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mSupported:Ljava/util/List;

    .line 43
    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mDefaultValue:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/StorageSetting;->reload()V

    .line 45
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mSettingRestoreListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p2, "key_restore_settings"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method public isModeSupport()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mCurrentValue:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mCurrentValue:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mKey:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz v0, :cond_0

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public queryValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public reload()V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mKey:Ljava/lang/String;

    .line 58
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "internal"

    .line 57
    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/StorageSetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method public setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V
    .locals 0

    return-void
.end method

.method public syncValueToDataStore()V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mKey:Ljava/lang/String;

    .line 164
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "internal"

    .line 163
    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mCurrentValue:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public turnOnSwitch(Z)V
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/StorageSetting;->mSettingRestoreListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_restore_settings"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method
