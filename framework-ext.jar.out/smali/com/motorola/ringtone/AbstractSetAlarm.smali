.class public Lcom/motorola/ringtone/AbstractSetAlarm;
.super Landroid/preference/PreferenceActivity;
.source "AbstractSetAlarm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/ringtone/AbstractSetAlarm$OnActivityResultListener;
    }
.end annotation


# instance fields
.field private mActivityResultListener:Lcom/motorola/ringtone/AbstractSetAlarm$OnActivityResultListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/ringtone/AbstractSetAlarm;->mActivityResultListener:Lcom/motorola/ringtone/AbstractSetAlarm$OnActivityResultListener;

    .line 21
    return-void
.end method


# virtual methods
.method public addOnActivityResultListener(Lcom/motorola/ringtone/AbstractSetAlarm$OnActivityResultListener;)V
    .locals 0
    .parameter "activityResultListener"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/motorola/ringtone/AbstractSetAlarm;->mActivityResultListener:Lcom/motorola/ringtone/AbstractSetAlarm$OnActivityResultListener;

    .line 27
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/motorola/ringtone/AbstractSetAlarm;->mActivityResultListener:Lcom/motorola/ringtone/AbstractSetAlarm$OnActivityResultListener;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/motorola/ringtone/AbstractSetAlarm;->mActivityResultListener:Lcom/motorola/ringtone/AbstractSetAlarm$OnActivityResultListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/motorola/ringtone/AbstractSetAlarm$OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)V

    .line 35
    :cond_0
    return-void
.end method

.method public removeOnActivityResultListener()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/ringtone/AbstractSetAlarm;->mActivityResultListener:Lcom/motorola/ringtone/AbstractSetAlarm$OnActivityResultListener;

    .line 30
    return-void
.end method
