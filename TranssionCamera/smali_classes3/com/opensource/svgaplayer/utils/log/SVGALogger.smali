.class public final Lcom/opensource/svgaplayer/utils/log/SVGALogger;
.super Ljava/lang/Object;
.source "SVGALogger.kt"


# static fields
.field public static final INSTANCE:Lcom/opensource/svgaplayer/utils/log/SVGALogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static isLogEnabled:Z

.field private static mLogger:Lcom/opensource/svgaplayer/utils/log/ILogger;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/SVGALogger;

    .line 8
    new-instance v0, Lcom/opensource/svgaplayer/utils/log/DefaultLogCat;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/utils/log/DefaultLogCat;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->mLogger:Lcom/opensource/svgaplayer/utils/log/ILogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSVGALogger()Lcom/opensource/svgaplayer/utils/log/ILogger;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 31
    sget-object p0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->mLogger:Lcom/opensource/svgaplayer/utils/log/ILogger;

    return-object p0
.end method

.method public final isLogEnabled()Z
    .locals 0

    .line 38
    sget-boolean p0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->isLogEnabled:Z

    return p0
.end method
