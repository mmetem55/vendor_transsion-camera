.class public Lcom/transsion/camera/app/ui/mode/ModeUIItem;
.super Ljava/lang/Object;
.source "ModeUIItem.java"


# static fields
.field private static FEATURE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFeatureResource:Lcom/transsion/camera/app/common/FeatureResource;

.field public final mIsSellingPoint:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem$1;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->FEATURE_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;-><init>(Lcom/transsion/camera/app/common/FeatureResource;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/FeatureResource;Z)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mFeatureResource:Lcom/transsion/camera/app/common/FeatureResource;

    .line 23
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mIsSellingPoint:Z

    return-void
.end method

.method public static getSPVal(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 60
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getSPkey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SellingPoint"

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static getSPkey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->FEATURE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static setSPVal(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 65
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getSPkey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SellingPoint"

    const/4 v1, 0x0

    .line 66
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 67
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mFeatureResource:Lcom/transsion/camera/app/common/FeatureResource;

    iget-object p0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mFeatureResource:Lcom/transsion/camera/app/common/FeatureResource;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mFeatureResource:Lcom/transsion/camera/app/common/FeatureResource;

    iget-object p0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mFeatureResource:Lcom/transsion/camera/app/common/FeatureResource;

    iget-object p0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    return-object p0
.end method
