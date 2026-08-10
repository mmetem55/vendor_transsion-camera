.class public abstract Lcom/transsion/camera/app/ui/setting/spec/EntranceSettingUISpec;
.super Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
.source "EntranceSettingUISpec.java"


# instance fields
.field private TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;-><init>(Ljava/lang/String;ILandroid/content/res/Resources;)V

    .line 27
    new-instance p1, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class p2, Lcom/transsion/camera/app/ui/setting/spec/EntranceSettingUISpec;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/spec/EntranceSettingUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method


# virtual methods
.method public createSupportedEntries(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 57
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 59
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 65
    new-array v1, p1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 68
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 71
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 72
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntries:[Ljava/lang/String;

    aget-object v1, v3, v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected final init(Landroid/content/res/Resources;)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntries:[Ljava/lang/String;

    const v2, 0x7f10029b

    .line 35
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 36
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntries:[Ljava/lang/String;

    const v2, 0x7f100299

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    const v1, 0x7f10029c

    .line 38
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 39
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    const v1, 0x7f10029a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 41
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/EntranceSettingUISpec;->initTitle(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mTitle:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mMessage:Ljava/lang/String;

    .line 43
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/EntranceSettingUISpec;->initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 46
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntries:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    .line 47
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    .line 48
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntrySummaries:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntrySummaries:[Ljava/lang/String;

    .line 49
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryDrawables:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected abstract initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
.end method

.method protected abstract initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
.end method
