.class public final Lcom/opensource/svgaplayer/SVGAParserKt;
.super Ljava/lang/Object;
.source "SVGAParser.kt"


# static fields
.field private static fileLock:I

.field private static isUnzipping:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final synthetic access$getFileLock$p()I
    .locals 1

    .line 1
    sget v0, Lcom/opensource/svgaplayer/SVGAParserKt;->fileLock:I

    return v0
.end method

.method public static final synthetic access$isUnzipping$p()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/opensource/svgaplayer/SVGAParserKt;->isUnzipping:Z

    return v0
.end method

.method public static final synthetic access$setUnzipping$p(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/opensource/svgaplayer/SVGAParserKt;->isUnzipping:Z

    return-void
.end method
