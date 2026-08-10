.class public Lcom/airbnb/lottie/model/Marker;
.super Ljava/lang/Object;
.source "Marker.java"


# instance fields
.field public final durationFrames:F

.field private final name:Ljava/lang/String;

.field public final startFrame:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FF)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/airbnb/lottie/model/Marker;->name:Ljava/lang/String;

    .line 12
    iput p3, p0, Lcom/airbnb/lottie/model/Marker;->durationFrames:F

    .line 13
    iput p2, p0, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    return-void
.end method
