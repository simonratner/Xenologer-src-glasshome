.class Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;
.super Landroid/os/Handler;
.source "QueueingGrecoListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/QueueingGrecoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueueHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/QueueingGrecoListener;


# direct methods
.method private constructor <init>(Lcom/google/glass/voice/network/QueueingGrecoListener;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->this$0:Lcom/google/glass/voice/network/QueueingGrecoListener;

    .line 317
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 318
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/voice/network/QueueingGrecoListener;Landroid/os/Looper;Lcom/google/glass/voice/network/QueueingGrecoListener$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 314
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;-><init>(Lcom/google/glass/voice/network/QueueingGrecoListener;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 322
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 366
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 324
    :pswitch_1
    iget-object v1, p0, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->this$0:Lcom/google/glass/voice/network/QueueingGrecoListener;

    #calls: Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnBeginningOfSpeech()V
    invoke-static {v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->access$100(Lcom/google/glass/voice/network/QueueingGrecoListener;)V

    goto :goto_0

    .line 327
    :pswitch_2
    iget-object v1, p0, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->this$0:Lcom/google/glass/voice/network/QueueingGrecoListener;

    #calls: Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnDone()V
    invoke-static {v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->access$200(Lcom/google/glass/voice/network/QueueingGrecoListener;)V

    goto :goto_0

    .line 330
    :pswitch_3
    iget-object v1, p0, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->this$0:Lcom/google/glass/voice/network/QueueingGrecoListener;

    #calls: Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnEndOfSpeech()V
    invoke-static {v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->access$300(Lcom/google/glass/voice/network/QueueingGrecoListener;)V

    goto :goto_0

    .line 333
    :pswitch_4
    iget-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->this$0:Lcom/google/glass/voice/network/QueueingGrecoListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/speech/exception/RecognizeException;

    #calls: Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnError(Lcom/google/android/speech/exception/RecognizeException;)V
    invoke-static {v2, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->access$400(Lcom/google/glass/voice/network/QueueingGrecoListener;Lcom/google/android/speech/exception/RecognizeException;)V

    goto :goto_0

    .line 336
    :pswitch_5
    iget-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->this$0:Lcom/google/glass/voice/network/QueueingGrecoListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/majel/proto/MajelProtos$MajelResponse;

    #calls: Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V
    invoke-static {v2, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->access$500(Lcom/google/glass/voice/network/QueueingGrecoListener;Lcom/google/majel/proto/MajelProtos$MajelResponse;)V

    goto :goto_0

    .line 339
    :pswitch_6
    iget-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->this$0:Lcom/google/glass/voice/network/QueueingGrecoListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    #calls: Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnPinholeResult(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V
    invoke-static {v2, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->access$600(Lcom/google/glass/voice/network/QueueingGrecoListener;Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V

    goto :goto_0

    .line 342
    :pswitch_7
    iget-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->this$0:Lcom/google/glass/voice/network/QueueingGrecoListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    #calls: Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnMediaDataResult([B)V
    invoke-static {v2, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->access$700(Lcom/google/glass/voice/network/QueueingGrecoListener;[B)V

    goto :goto_0

    .line 345
    :pswitch_8
    iget-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->this$0:Lcom/google/glass/voice/network/QueueingGrecoListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    #calls: Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V
    invoke-static {v2, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->access$800(Lcom/google/glass/voice/network/QueueingGrecoListener;Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V

    goto :goto_0

    .line 348
    :pswitch_9
    iget-object v1, p0, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->this$0:Lcom/google/glass/voice/network/QueueingGrecoListener;

    #calls: Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnNoSpeechDetected()V
    invoke-static {v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->access$900(Lcom/google/glass/voice/network/QueueingGrecoListener;)V

    goto :goto_0

    .line 351
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [F

    move-object v0, v1

    check-cast v0, [F

    .line 352
    .local v0, args:[F
    iget-object v1, p0, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->this$0:Lcom/google/glass/voice/network/QueueingGrecoListener;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    #calls: Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnReadyForSpeech(FF)V
    invoke-static {v1, v2, v3}, Lcom/google/glass/voice/network/QueueingGrecoListener;->access$1000(Lcom/google/glass/voice/network/QueueingGrecoListener;FF)V

    goto :goto_0

    .line 355
    .end local v0           #args:[F
    :pswitch_b
    iget-object v1, p0, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->this$0:Lcom/google/glass/voice/network/QueueingGrecoListener;

    #calls: Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnRecognitionCancelled()V
    invoke-static {v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->access$1100(Lcom/google/glass/voice/network/QueueingGrecoListener;)V

    goto :goto_0

    .line 358
    :pswitch_c
    iget-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->this$0:Lcom/google/glass/voice/network/QueueingGrecoListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    #calls: Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    invoke-static {v2, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->access$1200(Lcom/google/glass/voice/network/QueueingGrecoListener;Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V

    goto :goto_0

    .line 362
    :pswitch_d
    iget-object v1, p0, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->this$0:Lcom/google/glass/voice/network/QueueingGrecoListener;

    #getter for: Lcom/google/glass/voice/network/QueueingGrecoListener;->handlerThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->access$1300(Lcom/google/glass/voice/network/QueueingGrecoListener;)Landroid/os/HandlerThread;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->this$0:Lcom/google/glass/voice/network/QueueingGrecoListener;

    #getter for: Lcom/google/glass/voice/network/QueueingGrecoListener;->handlerThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->access$1300(Lcom/google/glass/voice/network/QueueingGrecoListener;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    goto/16 :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_1
        :pswitch_3
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_c
        :pswitch_8
        :pswitch_2
        :pswitch_4
        :pswitch_d
    .end packed-switch
.end method
