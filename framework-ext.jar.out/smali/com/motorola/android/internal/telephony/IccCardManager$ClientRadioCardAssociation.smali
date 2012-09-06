.class Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;
.super Ljava/lang/Object;
.source "IccCardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/IccCardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientRadioCardAssociation"
.end annotation


# instance fields
.field mIccCardApp:Lcom/android/internal/telephony/IccCard;

.field mModemId:I

.field mPhoneType:I

.field mUniqueSlotId:I

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/IccCardManager;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/IccCardManager;IIILcom/android/internal/telephony/IccCard;)V
    .locals 0
    .parameter
    .parameter "modemId"
    .parameter "phoneType"
    .parameter "uniqueSlotId"
    .parameter "iccCardApp"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;->this$0:Lcom/motorola/android/internal/telephony/IccCardManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput p2, p0, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;->mModemId:I

    .line 211
    iput p3, p0, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;->mPhoneType:I

    .line 212
    iput p4, p0, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;->mUniqueSlotId:I

    .line 214
    iput-object p5, p0, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;->mIccCardApp:Lcom/android/internal/telephony/IccCard;

    .line 215
    return-void
.end method


# virtual methods
.method getModemId()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;->mModemId:I

    return v0
.end method

.method getPhoneType()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;->mPhoneType:I

    return v0
.end method

.method getUniqueSlotId()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;->mUniqueSlotId:I

    return v0
.end method

.method setModemId(I)V
    .locals 0
    .parameter "modemId"

    .prologue
    .line 230
    iput p1, p0, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;->mModemId:I

    .line 231
    return-void
.end method

.method setUniqueSlotId(I)V
    .locals 0
    .parameter "uniqueSlotId"

    .prologue
    .line 234
    iput p1, p0, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;->mUniqueSlotId:I

    .line 235
    return-void
.end method
