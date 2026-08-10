.class public final synthetic Lcom/opensource/svgaplayer/SVGAImageView$WhenMappings;
.super Ljava/lang/Object;
.source "SVGAImageView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/SVGAImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->values()[Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->Backward:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->Forward:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->Clear:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sput-object v0, Lcom/opensource/svgaplayer/SVGAImageView$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
