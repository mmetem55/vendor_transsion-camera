.class Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyleRestriction;
.super Ljava/lang/Object;
.source "VideoFrameStyleRestriction.java"


# static fields
.field private static final sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 17
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyleRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_video_frame_style"

    .line 20
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    const-string v2, "key_video_frame"

    .line 21
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 23
    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v4, "-100"

    invoke-direct {v3, v1, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "on"

    const-string v5, "on,off"

    .line 25
    invoke-virtual {v3, v2, v4, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 26
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 23
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 28
    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v4, "0"

    invoke-direct {v3, v1, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "off"

    .line 30
    invoke-virtual {v3, v2, v1, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getVideoFrameStyleRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 35
    sget-object v0, Lcom/transsion/camera/feature/setting/videoframe/VideoFrameStyleRestriction;->sRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
