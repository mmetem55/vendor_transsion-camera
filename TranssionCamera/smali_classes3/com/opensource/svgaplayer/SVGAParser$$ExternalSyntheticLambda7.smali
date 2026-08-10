.class public final synthetic Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda7;->f$1:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda7;->f$1:[B

    invoke-static {v0, p0}, Lcom/opensource/svgaplayer/SVGAParser;->$r8$lambda$mkaDKnTd6mrfmcewYRTYfFJr2oY(Ljava/lang/String;[B)V

    return-void
.end method
