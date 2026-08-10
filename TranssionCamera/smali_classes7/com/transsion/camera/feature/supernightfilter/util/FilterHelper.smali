.class public Lcom/transsion/camera/feature/supernightfilter/util/FilterHelper;
.super Ljava/lang/Object;
.source "FilterHelper.java"


# static fields
.field private static final ASSET_ROOT:Ljava/lang/String; = "assets:/"

.field private static final FILTER_ABAO_PAKAGE_NAME:Ljava/lang/String; = "749C7148-F6C7-418A-B177-3493994A5F84.2"

.field private static final FILTER_BLACK_GOLD_PAKAGE_NAME:Ljava/lang/String; = "B30D9226-B937-44EE-8742-2F06E519224C.2"

.field private static final FILTER_BLUES_PAKAGE_NAME:Ljava/lang/String; = "8D6ACB23-0313-4D52-8D7C-FFE9126135A1.1"

.field private static final FILTER_CYBERPUNK_PAKAGE_NAME:Ljava/lang/String; = "58098950-3A37-4BEC-8622-0E5D54343E0E.1"

.field private static final FILTER_GREEN_ORANGE_PAKAGE_NAME:Ljava/lang/String; = "670C7010-D791-46CA-8890-93E8EA2263B9.1"

.field private static final FILTER_ID_ABAO:Ljava/lang/String; = "749C7148-F6C7-418A-B177-3493994A5F84"

.field private static final FILTER_ID_BLACK_GOLD:Ljava/lang/String; = "B30D9226-B937-44EE-8742-2F06E519224C"

.field private static final FILTER_ID_BLUES:Ljava/lang/String; = "8D6ACB23-0313-4D52-8D7C-FFE9126135A1"

.field private static final FILTER_ID_CYBERPUNK:Ljava/lang/String; = "58098950-3A37-4BEC-8622-0E5D54343E0E"

.field private static final FILTER_ID_GREEN_ORANGE:Ljava/lang/String; = "670C7010-D791-46CA-8890-93E8EA2263B9"

.field private static final FILTER_ID_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILTER_ID_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILTER_ID_PARIS:Ljava/lang/String; = "45A1DD2E-51AF-4700-851D-FD673C00D70D"

.field private static final FILTER_NAME_ABAO:Ljava/lang/String; = "abao"

.field private static final FILTER_NAME_BLACK_GOLD:Ljava/lang/String; = "black_gold"

.field private static final FILTER_NAME_BLUES:Ljava/lang/String; = "blues"

.field private static final FILTER_NAME_CYBERPUNK:Ljava/lang/String; = "cybepunk"

.field private static final FILTER_NAME_GREEN_ORANGE:Ljava/lang/String; = "green_orange"

.field private static final FILTER_NAME_OIL:Ljava/lang/String; = "oil"

.field private static final FILTER_NAME_ORIGIN:Ljava/lang/String; = "supernight_filter_off"

.field private static final FILTER_NAME_PARIS:Ljava/lang/String; = "paris"

.field private static final FILTER_PARIS_PAKAGE_NAME:Ljava/lang/String; = "45A1DD2E-51AF-4700-851D-FD673C00D70D.1"

.field private static final FILTER_TAIL:Ljava/lang/String; = ".videofx"

.field private static final THEME_PATH:Ljava/lang/String; = "filterpkg"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/util/FilterHelper$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/supernightfilter/util/FilterHelper$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/supernightfilter/util/FilterHelper;->FILTER_ID_MAP:Ljava/util/HashMap;

    .line 49
    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/util/FilterHelper$2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/supernightfilter/util/FilterHelper$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/supernightfilter/util/FilterHelper;->FILTER_ID_NAME_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFilterIdByFilterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/transsion/camera/feature/supernightfilter/util/FilterHelper;->FILTER_ID_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getFilterInstallPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 65
    sget-object v0, Lcom/transsion/camera/feature/supernightfilter/util/FilterHelper;->FILTER_ID_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assets:/filterpkg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".videofx"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
