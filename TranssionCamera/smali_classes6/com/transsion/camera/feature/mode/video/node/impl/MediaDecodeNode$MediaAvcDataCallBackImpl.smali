.class Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode$MediaAvcDataCallBackImpl;
.super Ljava/lang/Object;
.source "MediaDecodeNode.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder$IMediaAvcDataCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaAvcDataCallBackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode$MediaAvcDataCallBackImpl;->this$0:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode$1;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode$MediaAvcDataCallBackImpl;-><init>(Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;)V

    return-void
.end method


# virtual methods
.method public decodedAvcData(I[BIIIZZ)V
    .locals 11

    .line 111
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decode avc data frameNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-object v0, p0

    .line 112
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode$MediaAvcDataCallBackImpl;->this$0:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    new-instance v1, Lcom/transsion/camera/feature/mode/video/node/NodeData;

    move-object v3, v1

    move v4, p1

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object v8, p2

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lcom/transsion/camera/feature/mode/video/node/NodeData;-><init>(IIII[BZZ)V

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->access$200(Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z

    return-void
.end method
