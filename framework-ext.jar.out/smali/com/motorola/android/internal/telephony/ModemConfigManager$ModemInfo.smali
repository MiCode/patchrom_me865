.class public Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
.super Ljava/lang/Object;
.source "ModemConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/ModemConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModemInfo"
.end annotation


# static fields
.field public static final MAX_RADIO_MODULE:I = 0x2


# instance fields
.field mCdmaPhone:Lcom/android/internal/telephony/Phone;

.field mCdmaSource:I

.field mCi:Lcom/android/internal/telephony/CommandsInterface;

.field mContext:Landroid/content/Context;

.field mCurrentActivePhoneType:I

.field mGsmPhone:Lcom/android/internal/telephony/Phone;

.field mModemId:I

.field mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field mPhoneProxy:Lcom/android/internal/telephony/Phone;

.field mPreferredNetworkMode:I

.field mRadioModuleNum:I

.field mRadioModules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;",
            ">;"
        }
    .end annotation
.end field

.field mSlotId:I

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/ModemConfigManager;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;IIII)V
    .locals 9
    .parameter
    .parameter "c"
    .parameter "phoneNotifier"
    .parameter "modemId"
    .parameter "networkMode"
    .parameter "cdmaSource"
    .parameter "radioModuleNum"

    .prologue
    .line 153
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;IIIII)V

    .line 154
    return-void
.end method

.method constructor <init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;IIIII)V
    .locals 10
    .parameter
    .parameter "c"
    .parameter "phoneNotifier"
    .parameter "modemId"
    .parameter "networkMode"
    .parameter "cdmaSource"
    .parameter "radioModuleNum"
    .parameter "slot"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->this$0:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mContext:Landroid/content/Context;

    .line 160
    iput p4, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mModemId:I

    .line 161
    move/from16 v0, p8

    iput v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mSlotId:I

    .line 162
    move/from16 v0, p6

    iput v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCdmaSource:I

    .line 163
    iput p5, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mPreferredNetworkMode:I

    .line 164
    iput-object p3, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 165
    move/from16 v0, p7

    iput v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModuleNum:I

    .line 167
    new-instance v5, Ljava/util/ArrayList;

    move/from16 v0, p7

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModules:Ljava/util/ArrayList;

    .line 169
    #getter for: Lcom/motorola/android/internal/telephony/ModemConfigManager;->isMCFileLoaded:Z
    invoke-static {p1}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->access$000(Lcom/motorola/android/internal/telephony/ModemConfigManager;)Z

    move-result v5

    if-eqz v5, :cond_4

    #getter for: Lcom/motorola/android/internal/telephony/ModemConfigManager;->mMCFile:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;
    invoke-static {p1}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->access$100(Lcom/motorola/android/internal/telephony/ModemConfigManager;)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;

    move-result-object v5

    iget v5, v5, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;->mNumberOfMCEntries:I

    const/4 v6, 0x2

    if-lt v5, v6, :cond_4

    .line 172
    const v2, 0x7fffffff

    .line 173
    .local v2, firstModemId:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    #getter for: Lcom/motorola/android/internal/telephony/ModemConfigManager;->mMCFile:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;
    invoke-static {p1}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->access$100(Lcom/motorola/android/internal/telephony/ModemConfigManager;)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;

    move-result-object v5

    iget v5, v5, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;->mNumberOfMCEntries:I

    if-ge v3, v5, :cond_1

    .line 174
    #calls: Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemConfigInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    invoke-static {p1, v3}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->access$200(Lcom/motorola/android/internal/telephony/ModemConfigManager;I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;

    move-result-object v1

    .line 175
    .local v1, curMC:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    if-eqz v1, :cond_0

    iget v5, v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mMCInfoId:I

    if-ge v5, v2, :cond_0

    .line 176
    iget v2, v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mMCInfoId:I

    .line 173
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 179
    .end local v1           #curMC:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    :cond_1
    if-ne p4, v2, :cond_3

    .line 180
    new-instance v5, Lcom/android/internal/telephony/RIL;

    iget-object v6, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mPreferredNetworkMode:I

    iget v8, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCdmaSource:I

    invoke-direct {v5, v6, v7, v8}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 187
    .end local v2           #firstModemId:I
    .end local v3           #i:I
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getDefaultActivePhoneType()I

    move-result v5

    iput v5, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCurrentActivePhoneType:I

    .line 189
    const/4 v5, 0x2

    move/from16 v0, p7

    if-ne v0, v5, :cond_2

    .line 190
    new-instance v4, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo$1;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5, p1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo$1;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;Landroid/os/Handler;Lcom/motorola/android/internal/telephony/ModemConfigManager;)V

    .line 197
    .local v4, mContentObserver:Landroid/database/ContentObserver;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    #calls: Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemConfigInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    invoke-static {p1, p4}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->access$200(Lcom/motorola/android/internal/telephony/ModemConfigManager;I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mPreferNetModeName:Ljava/lang/String;

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 201
    .end local v4           #mContentObserver:Landroid/database/ContentObserver;
    :cond_2
    return-void

    .line 182
    .restart local v2       #firstModemId:I
    .restart local v3       #i:I
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/RIL;

    iget-object v6, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mPreferredNetworkMode:I

    iget v8, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCdmaSource:I

    const/4 v9, 0x2

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    iput-object v5, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    goto :goto_1

    .line 185
    .end local v2           #firstModemId:I
    .end local v3           #i:I
    :cond_4
    new-instance v5, Lcom/android/internal/telephony/RIL;

    iget-object v6, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mPreferredNetworkMode:I

    iget v8, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCdmaSource:I

    invoke-direct {v5, v6, v7, v8}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    goto :goto_1
.end method

.method private createPhone(I)Lcom/android/internal/telephony/PhoneBase;
    .locals 5
    .parameter "phoneType"

    .prologue
    .line 216
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getLteOnCdmaMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 226
    const-string v0, "RIL_ModemConfigManager"

    const-string v1, "Creating CDMAPhone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    iget v4, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mModemId:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 239
    :goto_1
    return-object v0

    .line 221
    :pswitch_0
    const-string v0, "RIL_ModemConfigManager"

    const-string v1, "Creating CDMALTEPhone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    iget v4, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mModemId:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 232
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 233
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    iget v4, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mModemId:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    .line 234
    const-string v0, "RIL_ModemConfigManager"

    const-string v1, "Creating GSMPhone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    goto :goto_1

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->this$0:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    const-string v1, "Get invalid phone type when createPhone, failed to create"

    #calls: Lcom/motorola/android/internal/telephony/ModemConfigManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->access$300(Lcom/motorola/android/internal/telephony/ModemConfigManager;Ljava/lang/String;)V

    .line 239
    const/4 v0, 0x0

    goto :goto_1

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getPhoneType(I)I
    .locals 3
    .parameter "networkMode"

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 327
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 359
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    .line 339
    goto :goto_0

    .line 345
    :pswitch_3
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getPhoneTypeInGlobalNetworkMode()I

    move-result v0

    goto :goto_0

    .line 351
    :pswitch_4
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLteOnCdmaMode()I

    move-result v2

    if-eq v2, v1, :cond_0

    move v0, v1

    .line 355
    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method addRadioModule(Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;)V
    .locals 1
    .parameter "radioModule"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method public getActivePhoneType()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCurrentActivePhoneType:I

    return v0
.end method

.method public getCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getCdmaSubscriptionSource()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCdmaSource:I

    return v0
.end method

.method public getDefaultActivePhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getDefaultActivePhoneType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultActivePhoneType()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mPreferredNetworkMode:I

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getPhoneType(I)I

    move-result v0

    return v0
.end method

.method public getGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getModemId()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mModemId:I

    return v0
.end method

.method public getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 267
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 273
    :goto_0
    return-object v0

    .line 269
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->this$0:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    const-string v1, "invalid phone type to get Phone"

    #calls: Lcom/motorola/android/internal/telephony/ModemConfigManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->access$300(Lcom/motorola/android/internal/telephony/ModemConfigManager;Ljava/lang/String;)V

    .line 273
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneProxy()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getPhoneTypeInGlobalNetworkMode()I
    .locals 2

    .prologue
    .line 365
    const-string v0, "persist.radio.ap.phonetype"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRIL()Lcom/android/internal/telephony/CommandsInterface;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method initPhoneInstances()V
    .locals 3

    .prologue
    .line 208
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModules:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    .line 209
    .local v1, r:Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;
    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->getPhoneType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->createPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iput-object v2, v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->mPhoneObj:Lcom/android/internal/telephony/PhoneBase;

    goto :goto_0

    .line 213
    .end local v1           #r:Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;
    :cond_1
    return-void
.end method

.method public isCdmaOnly()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 286
    iget v3, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModuleNum:I

    if-ne v3, v1, :cond_0

    .line 287
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModules:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    .line 288
    .local v0, radio:Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 292
    .end local v0           #radio:Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public isDualMode()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 296
    iget v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModuleNum:I

    if-ne v0, v3, :cond_2

    .line 297
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModules:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModules:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModules:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModules:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->getPhoneType()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModules:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModules:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->getPhoneType()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModules:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModules:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_2

    :cond_1
    move v0, v1

    .line 308
    :goto_0
    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public setPhoneProxy(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "phoneProxy"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    .line 248
    return-void
.end method

.method public setPhoneTypeInGlobalNetworkMode(I)V
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 370
    iput p1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCurrentActivePhoneType:I

    .line 372
    const-string v0, "persist.radio.ap.phonetype"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    return-void
.end method
