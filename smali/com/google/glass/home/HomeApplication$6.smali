.class Lcom/google/glass/home/HomeApplication$6;
.super Ljava/lang/Object;
.source "HomeApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/HomeApplication;->onAccountReady(Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/HomeApplication;

.field final synthetic val$primaryAccount:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication$6;->this$0:Lcom/google/glass/home/HomeApplication;

    iput-object p2, p0, Lcom/google/glass/home/HomeApplication$6;->val$primaryAccount:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 297
    invoke-static {}, Lcom/google/glass/home/HomeApplication;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enabling sync."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$6;->val$primaryAccount:Landroid/accounts/Account;

    const-string v1, "com.google.glass.timeline"

    invoke-static {v0, v1}, Lcom/google/glass/sync/SyncHelper;->enableSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$6;->val$primaryAccount:Landroid/accounts/Account;

    const-string v1, "com.google.glass.entity"

    invoke-static {v0, v1}, Lcom/google/glass/sync/SyncHelper;->enableSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$6;->val$primaryAccount:Landroid/accounts/Account;

    const-string v1, "com.google.glass.location"

    invoke-static {v0, v1}, Lcom/google/glass/sync/SyncHelper;->enableSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$6;->val$primaryAccount:Landroid/accounts/Account;

    const-string v1, "com.google.glass.savedaudio"

    invoke-static {v0, v1}, Lcom/google/glass/sync/SyncHelper;->enableSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$6;->this$0:Lcom/google/glass/home/HomeApplication;

    iget-object v1, p0, Lcom/google/glass/home/HomeApplication$6;->val$primaryAccount:Landroid/accounts/Account;

    #calls: Lcom/google/glass/home/HomeApplication;->enablePowerConnectedSync(Landroid/accounts/Account;)V
    invoke-static {v0, v1}, Lcom/google/glass/home/HomeApplication;->access$700(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;)V

    .line 303
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$6;->this$0:Lcom/google/glass/home/HomeApplication;

    iget-object v1, p0, Lcom/google/glass/home/HomeApplication$6;->val$primaryAccount:Landroid/accounts/Account;

    #calls: Lcom/google/glass/home/HomeApplication;->enableConnectivityEstablishedSync(Landroid/accounts/Account;)V
    invoke-static {v0, v1}, Lcom/google/glass/home/HomeApplication;->access$800(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;)V

    .line 306
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$6;->this$0:Lcom/google/glass/home/HomeApplication;

    const-string v1, "com.google.glass.location"

    invoke-static {v0, v1}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/content/Context;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$6;->this$0:Lcom/google/glass/home/HomeApplication;

    const-string v1, "com.google.glass.entity"

    invoke-static {v0, v1}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/content/Context;Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/google/glass/home/HomeApplication;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Registering for GCM."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$6;->this$0:Lcom/google/glass/home/HomeApplication;

    #getter for: Lcom/google/glass/home/HomeApplication;->retryGcmRegistrationReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;
    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$900(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/util/SafeBroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/HomeApplication$6;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v1}, Lcom/google/glass/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "retry_gcm_register"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$6;->this$0:Lcom/google/glass/home/HomeApplication;

    #calls: Lcom/google/glass/home/HomeApplication;->registerGcm()V
    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$500(Lcom/google/glass/home/HomeApplication;)V

    .line 316
    return-void
.end method
