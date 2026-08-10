.class public final synthetic Lcom/opensource/svgaplayer/SVGAVideoEntity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic f$1:Lcom/opensource/svgaplayer/proto/MovieEntity;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/opensource/svgaplayer/proto/MovieEntity;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$$ExternalSyntheticLambda0;->f$1:Lcom/opensource/svgaplayer/proto/MovieEntity;

    iput-object p3, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 6

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$$ExternalSyntheticLambda0;->f$1:Lcom/opensource/svgaplayer/proto/MovieEntity;

    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function0;

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->$r8$lambda$VflCi3fCKitZrcAQDMHfCWVcb5M(Lkotlin/jvm/internal/Ref$IntRef;Lcom/opensource/svgaplayer/proto/MovieEntity;Lkotlin/jvm/functions/Function0;Landroid/media/SoundPool;II)V

    return-void
.end method
