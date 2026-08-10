.class public Lcom/google/ar/core/Earth;
.super Lcom/google/ar/core/TrackableBase;
.source "Earth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ar/core/Earth$EarthState;
    }
.end annotation


# direct methods
.method constructor <init>(JLcom/google/ar/core/Session;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ar/core/TrackableBase;-><init>(JLcom/google/ar/core/Session;)V

    return-void
.end method

.method private native nativeCreateAnchor(JJDDDFFFF)J
.end method

.method private native nativeGetCameraGeospatialPose(JJ)J
.end method

.method private native nativeGetEarthState(JJ)I
.end method

.method private native nativeGetTrackingState(JJ)I
.end method

.method private native nativeReleaseEarth(JJ)V
.end method


# virtual methods
.method public createAnchor(DDDFFFF)Lcom/google/ar/core/Anchor;
    .locals 17

    move-object/from16 v15, p0

    .line 1
    new-instance v14, Lcom/google/ar/core/Anchor;

    iget-object v0, v15, Lcom/google/ar/core/TrackableBase;->session:Lcom/google/ar/core/Session;

    iget-wide v1, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v3, v15, Lcom/google/ar/core/TrackableBase;->nativeHandle:J

    move-object/from16 v0, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v16, v14

    move/from16 v14, p10

    .line 2
    invoke-direct/range {v0 .. v14}, Lcom/google/ar/core/Earth;->nativeCreateAnchor(JJDDDFFFF)J

    move-result-wide v0

    iget-object v2, v15, Lcom/google/ar/core/TrackableBase;->session:Lcom/google/ar/core/Session;

    move-object/from16 v3, v16

    invoke-direct {v3, v0, v1, v2}, Lcom/google/ar/core/Anchor;-><init>(JLcom/google/ar/core/Session;)V

    return-object v3
.end method

.method public createAnchor(DDD[F)Lcom/google/ar/core/Anchor;
    .locals 18

    move-object/from16 v15, p0

    .line 3
    new-instance v14, Lcom/google/ar/core/Anchor;

    iget-object v0, v15, Lcom/google/ar/core/TrackableBase;->session:Lcom/google/ar/core/Session;

    iget-wide v1, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v3, v15, Lcom/google/ar/core/TrackableBase;->nativeHandle:J

    const/4 v0, 0x0

    aget v11, p7, v0

    const/4 v0, 0x1

    aget v12, p7, v0

    const/4 v0, 0x2

    aget v13, p7, v0

    const/4 v0, 0x3

    aget v16, p7, v0

    move-object/from16 v0, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-object/from16 v17, v14

    move/from16 v14, v16

    .line 4
    invoke-direct/range {v0 .. v14}, Lcom/google/ar/core/Earth;->nativeCreateAnchor(JJDDDFFFF)J

    move-result-wide v0

    iget-object v2, v15, Lcom/google/ar/core/TrackableBase;->session:Lcom/google/ar/core/Session;

    move-object/from16 v3, v17

    invoke-direct {v3, v0, v1, v2}, Lcom/google/ar/core/Anchor;-><init>(JLcom/google/ar/core/Session;)V

    return-object v3
.end method

.method public createAnchor(Lcom/google/ar/core/Pose;)Lcom/google/ar/core/Anchor;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Earth does not support createAnchor using a Pose. Use createAnchor with Geospatial coordinates instead."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/ar/core/TrackableBase;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected finalize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/ar/core/TrackableBase;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/google/ar/core/TrackableBase;->nativeSymbolTableHandle:J

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/google/ar/core/Earth;->nativeReleaseEarth(JJ)V

    iput-wide v2, p0, Lcom/google/ar/core/TrackableBase;->nativeHandle:J

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/google/ar/core/TrackableBase;->finalize()V

    return-void
.end method

.method public bridge synthetic getAnchors()Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/ar/core/TrackableBase;->getAnchors()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getCameraGeospatialPose()Lcom/google/ar/core/GeospatialPose;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/ar/core/GeospatialPose;

    iget-object v1, p0, Lcom/google/ar/core/TrackableBase;->session:Lcom/google/ar/core/Session;

    iget-wide v1, v1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v3, p0, Lcom/google/ar/core/TrackableBase;->nativeHandle:J

    .line 2
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/ar/core/Earth;->nativeGetCameraGeospatialPose(JJ)J

    move-result-wide v1

    iget-object p0, p0, Lcom/google/ar/core/TrackableBase;->session:Lcom/google/ar/core/Session;

    invoke-direct {v0, v1, v2, p0}, Lcom/google/ar/core/GeospatialPose;-><init>(JLcom/google/ar/core/Session;)V

    return-object v0
.end method

.method public getEarthState()Lcom/google/ar/core/Earth$EarthState;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ar/core/TrackableBase;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/TrackableBase;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Earth;->nativeGetEarthState(JJ)I

    move-result p0

    invoke-static {p0}, Lcom/google/ar/core/Earth$EarthState;->forNumber(I)Lcom/google/ar/core/Earth$EarthState;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingState()Lcom/google/ar/core/TrackingState;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ar/core/TrackableBase;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/TrackableBase;->nativeHandle:J

    .line 2
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Earth;->nativeGetTrackingState(JJ)I

    move-result p0

    .line 1
    invoke-static {p0}, Lcom/google/ar/core/TrackingState;->forNumber(I)Lcom/google/ar/core/TrackingState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hashCode()I
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/ar/core/TrackableBase;->hashCode()I

    move-result p0

    return p0
.end method
