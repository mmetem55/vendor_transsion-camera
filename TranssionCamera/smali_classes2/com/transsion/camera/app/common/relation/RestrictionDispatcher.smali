.class public Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;
.super Ljava/lang/Object;
.source "RestrictionDispatcher.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/setting/SettingTable;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    return-void
.end method


# virtual methods
.method public dispatch(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 7

    .line 32
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/relation/Relation;->getHeaderKey()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/relation/Relation;->getBodyKeys()Ljava/util/List;

    move-result-object v1

    .line 36
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 37
    iget-object v3, p0, Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 39
    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/relation/Relation;->getBodyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/relation/Relation;->getBodyEntryValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 44
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, ","

    .line 46
    invoke-static {v6}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v6

    .line 47
    invoke-virtual {v6}, Lcom/google/common/base/Splitter;->trimResults()Lcom/google/common/base/Splitter;

    move-result-object v6

    .line 48
    invoke-virtual {v6}, Lcom/google/common/base/Splitter;->omitEmptyStrings()Lcom/google/common/base/Splitter;

    move-result-object v6

    .line 49
    invoke-virtual {v6, v2}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v2

    .line 50
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 51
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 54
    :cond_1
    invoke-interface {v3, v0, v4, v5}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public dispatchRestoreDefault(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;->mSettingTable:Lcom/transsion/camera/app/common/setting/SettingTable;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting;

    move-result-object v1

    if-nez v1, :cond_0

    .line 68
    sget-object v1, Lcom/transsion/camera/app/common/relation/RestrictionDispatcher;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "should not dispatch a null restore default target: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ICameraSetting;->restoreToSupportedPlatformValue()V

    goto :goto_0

    :cond_1
    return-void
.end method
