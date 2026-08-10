.class public Lcom/transsion/camera/ui/setting/ordereditor/OrderEditorUI;
.super Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;
.source "OrderEditorUI.java"


# static fields
.field private static final ACTION_DISABLE_ARRAY_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTION_ENABLE_ARRAY_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Integer;

    const/4 v3, 0x0

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v4, 0x2

    .line 15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const/4 v5, 0x4

    .line 16
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v4

    const/4 v7, 0x6

    .line 17
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v2, v8

    const/16 v7, 0x36

    .line 18
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v5

    .line 14
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/ordereditor/OrderEditorUI;->ACTION_DISABLE_ARRAY_LIST:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    new-array v2, v1, [Ljava/lang/Integer;

    .line 22
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v3

    .line 23
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    const/4 v1, 0x7

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v8

    const/16 v1, 0x37

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    .line 22
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/ordereditor/OrderEditorUI;->ACTION_ENABLE_ARRAY_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-void
.end method


# virtual methods
.method public notifyCameraOperateAction(I)V
    .locals 2

    .line 36
    sget-object v0, Lcom/transsion/camera/ui/setting/ordereditor/OrderEditorUI;->ACTION_DISABLE_ARRAY_LIST:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->getPreference()Landroid/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 41
    :cond_0
    sget-object v0, Lcom/transsion/camera/ui/setting/ordereditor/OrderEditorUI;->ACTION_ENABLE_ARRAY_LIST:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->getPreference()Landroid/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    .line 44
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method
