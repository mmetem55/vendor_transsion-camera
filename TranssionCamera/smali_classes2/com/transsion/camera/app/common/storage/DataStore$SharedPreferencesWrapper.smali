.class Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;
.super Ljava/lang/Object;
.source "DataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/DataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedPreferencesWrapper"
.end annotation


# instance fields
.field private final mScope:Ljava/lang/String;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mValueCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/DataStore;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/storage/DataStore;Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;->this$0:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;->mValueCache:Ljava/util/Map;

    .line 175
    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;->mScope:Ljava/lang/String;

    .line 176
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;->getPreferencesFromScope(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 169
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 169
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;)Ljava/util/Map;
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;->getAll()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private getAll()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private getPreferencesFromScope(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;->this$0:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->access$400(Lcom/transsion/camera/app/common/storage/DataStore;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;->this$0:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->access$300(Lcom/transsion/camera/app/common/storage/DataStore;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;->mValueCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;->mValueCache:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 197
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setValue(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;->mValueCache:Ljava/util/Map;

    if-eqz p0, :cond_1

    .line 186
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 189
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;->mValueCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/DataStore$SharedPreferencesWrapper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
