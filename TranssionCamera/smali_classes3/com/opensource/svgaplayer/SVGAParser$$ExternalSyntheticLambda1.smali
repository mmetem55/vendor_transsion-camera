.class public final synthetic Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/opensource/svgaplayer/SVGAParser;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

.field public final synthetic f$3:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda1;->f$0:Lcom/opensource/svgaplayer/SVGAParser;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda1;->f$2:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    iput-object p4, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda1;->f$3:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda1;->f$0:Lcom/opensource/svgaplayer/SVGAParser;

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda1;->f$2:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAParser$$ExternalSyntheticLambda1;->f$3:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

    invoke-static {v0, v1, v2, p0}, Lcom/opensource/svgaplayer/SVGAParser;->$r8$lambda$ZB5VKdYIB1CWIOWB4AWqlPrhCmg(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V

    return-void
.end method
