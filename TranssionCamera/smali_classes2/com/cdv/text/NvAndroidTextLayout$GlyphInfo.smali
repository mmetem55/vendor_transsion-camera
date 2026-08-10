.class public Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;
.super Ljava/lang/Object;
.source "NvAndroidTextLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cdv/text/NvAndroidTextLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlyphInfo"
.end annotation


# instance fields
.field public bounding:Landroid/graphics/RectF;

.field public colorGlyph:Z

.field public endCharIdx:I

.field public glyphPath:Landroid/graphics/Path;

.field public pos:Landroid/graphics/PointF;

.field public startCharIdx:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/cdv/text/NvAndroidTextLayout$GlyphInfo;->colorGlyph:Z

    return-void
.end method
