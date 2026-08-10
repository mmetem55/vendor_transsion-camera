.class public Lcom/transsion/camera/app/mode/ModeOrderStorage;
.super Ljava/lang/Object;
.source "ModeOrderStorage.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/mode/ModeOrderStorage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/mode/ModeOrderStorage;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/transsion/camera/app/mode/ModeOrderStorage;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method private get(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/app/mode/ModeOrderStorage;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, p1, v1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 111
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p1, ","

    .line 114
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static resourceListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/FeatureResource;

    .line 52
    iget-object v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private save(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 105
    sget-object v0, Lcom/transsion/camera/app/mode/ModeOrderStorage;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/mode/ModeOrderStorage;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-string v0, "back_tab_mode_order"

    const-string v1, ""

    .line 98
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->save(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "front_tab_mode_order"

    .line 99
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->save(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "back_panel_mode_order"

    .line 100
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->save(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "front_panel_mode_order"

    .line 101
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->save(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getPanelModeOrder(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 90
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "back_panel_mode_order"

    .line 91
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->get(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "front_panel_mode_order"

    .line 93
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->get(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTabModeOrder(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 66
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "back_tab_mode_order"

    .line 67
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->get(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "front_tab_mode_order"

    .line 69
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->get(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updatePanelModeOrder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 82
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "back_panel_mode_order"

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->save(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "front_panel_mode_order"

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->save(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updatePanelModeOrder(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 74
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {p2}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->resourceListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->updatePanelModeOrder(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, ""

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->updatePanelModeOrder(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public updateTabModeOrder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "back_tab_mode_order"

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->save(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "front_tab_mode_order"

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->save(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateTabModeOrder(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 42
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p2}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->resourceListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->updateTabModeOrder(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, ""

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->updateTabModeOrder(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
