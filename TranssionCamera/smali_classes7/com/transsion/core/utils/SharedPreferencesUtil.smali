.class public Lcom/transsion/core/utils/SharedPreferencesUtil;
.super Ljava/lang/Object;
.source "SharedPreferencesUtil.java"


# static fields
.field private static final DEFAULT_OBJECT:Ljava/lang/Object;

.field private static final DEFAULT_STRING_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static sharePreferBank:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/core/utils/SharedPreferencesUtil;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/core/utils/SharedPreferencesUtil;->sharePreferBank:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/transsion/core/utils/SharedPreferencesUtil;->DEFAULT_STRING_SET:Ljava/util/Set;

    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/transsion/core/utils/SharedPreferencesUtil;->DEFAULT_OBJECT:Ljava/lang/Object;

    .line 53
    sput-object v0, Lcom/transsion/core/utils/SharedPreferencesUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static bindApplication(Landroid/content/Context;)V
    .locals 0

    .line 60
    sput-object p0, Lcom/transsion/core/utils/SharedPreferencesUtil;->mContext:Landroid/content/Context;

    return-void
.end method
